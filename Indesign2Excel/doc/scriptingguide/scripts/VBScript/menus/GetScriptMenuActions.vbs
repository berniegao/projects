Rem GetScriptMenuActions.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Gets the names of all script menu actions and writes them to a text file.
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
	Rem<fragment>
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	Rem You'll need to fill in a valid file path on your system.
	Set myTextFile = myFileSystemObject.CreateTextFile("c:\script menu actions.txt", True, False)
	For myCounter = 1 To myInDesign.ScriptMenuActions.Count
	    Set myScriptMenuAction = myInDesign.ScriptMenuActions.Item(myCounter)
	    myTextFile.WriteLine myScriptMenuAction.Name
	Next
	myTextFile.Close
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function
