Rem AfterNewHandler.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Adds metadata to a new document.
Rem <fragment>
myAddMetadata evt
Function myAddMetadata(myEvent)
	Set myInDesign = CreateObject("InDesign.Application")
	myFileName = myFindFile(myInDesign, "\AfterNewDoScript.vbs")
	Rem Because the afterNew event is triggered before the document
	Rem is actually created, we need to run the script from outside
	Rem InDesign. To do this, we'll use the WScript Shell.
	Set WSHShell = CreateObject("WScript.Shell") 
	WSHShell.Run "wscript " & myFileName
End Function
Rem </fragment>
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
