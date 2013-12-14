Rem GetMenuActions.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Gets the names of all menu actions and writes them to a text file.
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
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	Rem You'll need to fill in a valid file path on your system.
	Set myTextFile = myFileSystemObject.CreateTextFile("c:\menuactions.txt", True, False)
	For myCounter = 1 To myInDesign.MenuActions.Count
		Set myMenuAction = myInDesign.MenuActions.Item(myCounter)
		myTextFile.WriteLine myMenuAction.Name
	Next
	myTextFile.Close
	MsgBox "done!"
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
