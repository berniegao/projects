Rem MultipleEventListeners.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows that an event can trigger multiple event listeners.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Rem Remove the event listener on the application.
	myFileName = myFindFile(myInDesign, "\GetEventInfo.vbs")
	If myFileName <> "" Then
		Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
		Rem You must use a file reference, rather than a string, to remove
		Rem an event listener. In addition, the file location must match
		Rem the location of the file used to create the event listener.
		If myFileSystemObject.FileExists(myFileName) = True Then
			Set myFile = myFileSystemObject.GetFile(myFileName)		
			myResult = myInDesign.RemoveEventListener("beforeImport", myFile)
			If myResult = True Then
				MsgBox "Event listener removed."
			Else
				MsgBox "Event listener not removed."
			End If
		End If
	Else
		MsgBox "Handler file not found."
	End If
	Rem Remove the event listener on the document.
	If myInDesign.Documents.Count <> 0 Then
		myFileName = myFindFile(myInDesign, "\Message.vbs")
		If myFileName <> "" Then
			Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
			If myFileSystemObject.FileExists(myFileName) = True Then
				Set myFile = myFileSystemObject.GetFile(myFileName)		
				myResult = myInDesign.Documents.Item(1).RemoveEventListener("beforeImport", myFile, False)
				If myResult = True Then
					MsgBox "Event listener removed."
				Else
					MsgBox "Event listener not removed."
				End If
			End If
		Else
			MsgBox "Handler file not found."
		End If
	End If
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
	myDialog.Filter = "VBScript files|*.vbs"
	myDialog.InitialDir = myFolder
	myResult = myDialog.ShowOpen	 
	If myResult = 0 Then
	    myFileName = ""
	Else
		myFileName = myDialog.FileName
	End If
	myGetFileName = myFileName
End Function
