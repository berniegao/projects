Rem RemoveAllScriptMenuActions.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Removes all of the current script menu actions.
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
	For myCounter = myInDesign.ScriptMenuActions.Count To 1 Step -1
		myInDesign.ScriptMenuActions.Item(myCounter).Delete
	Next
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function