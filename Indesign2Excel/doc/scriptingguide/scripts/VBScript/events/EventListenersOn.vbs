Rem EventListenersOn.vbs
Rem An InDesign CS6 JavaScript
Rem
Rem Installs event listeners for common document events; displays a
Rem message when each event occurs.
Rem
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
	Rem Define the handler as a file named "GetEventInfo.vbs" stored
	Rem in the same folder as this script.
	myFileName = myFindFile(myInDesign, "\GetEventInfo.vbs")
	If myFileName <> "" Then
		myEventNames = Array("beforeQuit", "afterQuit", "beforeNew", "afterNew", "beforeOpen", "afterOpen", "beforeClose", "afterClose", "beforeSave", "afterSave", "beforeSaveAs", "afterSaveAs", "beforeSaveACopy", "afterSaveACopy", "beforeRevert", "afterRevert", "beforePrint", "afterPrint", "beforeExport", "afterExport", "beforeImport", "afterImport", "beforePlace", "afterPlace")
		For myCounter = 0 To UBound(myEventNames)
			myInDesign.AddEventListener myEventNames(myCounter), myFileName, False
			If myCounter < UBound(myEventNames) Then
				myInDesign.EventListeners.Add myEventNames(myCounter), myFileName, False
			End If
		Next
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
