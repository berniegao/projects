Rem ActiveScript.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Demonstrates the use of the ActiveScript property.
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
	myActiveScript = myInDesign.ActiveScript
	MsgBox ("The current script is: " & myActiveScript)
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	myParentFolder = myFileSystemObject.GetFile(myActiveScript).ParentFolder
	MsgBox ("The folder containing the active script is: " & myParentFolder)
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function