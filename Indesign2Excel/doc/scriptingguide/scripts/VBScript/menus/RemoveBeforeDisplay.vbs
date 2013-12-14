Rem RemoveBeforeDisplay.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Removes the script menu action and submenu created by the BeforeDisplay.vbs tutorial script.
Rem You might have to force InDesign to redraw the menu (by switching
Rem out of the application and back again) to make the menu item disappear.
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
    On Error Resume Next
	Set mySampleScriptAction = myInDesign.ScriptMenuActions.Item("Display Message")
	If Err.Number = 0 Then
		mySampleScriptAction.Delete
	Else
		Err.Clear
	End If
	On Error Resume Next
	Set mySampleScriptMenu = myInDesign.Menus.Item("$ID/Main").Submenus.Item("Script Menu Action")
	If Err.Number = 0 Then
		mySampleScriptMenu.Delete
	Else
		Err.Clear
	End If
End Function
Function myTeardown(myInDesign)
End Function
On Error Resume Next
