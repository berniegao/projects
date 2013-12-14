Rem CallProgressBar.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Displays a ScriptUI progress bar created by the
Rem ProgressBar.jsx example script.
main
Function main
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	myJavaScript = myFindFile(myInDesign, "\ProgressBar.jsx")
	myInDesign.DoScript myJavaScript, idScriptLanguage.idJavaScript
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Rem Create a document and add pages to it--
	Rem if you do not do this, the progress bar
	Rem will go by too quickly.
	Set myDocument = myInDesign.Documents.Add
	Rem Note that the JavaScripts must use the "session"
	Rem engine for this to work.
	myString = "#targetengine ""session""" & vbCr
	myString = myString & "myCreateProgressPanel(100, 400);" & vbcr
	myString = myString & "myProgressPanel.show();" & vbcr
	myInDesign.DoScript myString, idScriptLanguage.idJavascript
	For myCounter = 1 to 100
		Rem Add a page to the document.
		myInDesign.Documents.Item(1).Pages.Add
		myString = "#targetengine ""session""" & vbCr
		myString = myString & "myProgressPanel.myProgressBar.value = " 
		myString = myString & cstr(myCounter) & "/myIncrement;" & vbcr
		myInDesign.DoScript myString, idScriptLanguage.idJavascript
		If(myCounter = 100) Then
			myString = "#targetengine ""session""" & vbCr
			myString = myString & "myProgressPanel.myProgressBar.value = 0;" & vbcr
			myString = myString & "myProgressPanel.hide();" & vbcr
			myInDesign.DoScript myString, idScriptLanguage.idJavascript
			myDocument.Close idSaveOptions.idNo
		End If
	Next
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myFindFile(myInDesign, myRelativePath)
	myFilePath = myInDesign.ActiveScript
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	myFolderPath = myFileSystemObject.GetFile(myFilePath).ParentFolder.Path
	myFilePath = myFolderPath & myRelativePath
	If myFileSystemObject.FileExists(myFilePath) = True Then
		myFile = myFilePath
	Else
		myFile = myGetFileName(myFolderPath)
	End If
	myFindFile = myFile
End Function
Function myGetFileName(myFolder)
	Set myDialog = CreateObject("UserAccounts.CommonDialog")
	myDialog.Filter = "JavaScript Files|*.jsx"
	myDialog.InitialDir = myFolder
	myResult = myDialog.ShowOpen	 
	If myResult = 0 Then
	    myFileName = ""
	Else
		myFileName = myDialog.FileName
	End If
	myGetFileName = myFileName
End Function