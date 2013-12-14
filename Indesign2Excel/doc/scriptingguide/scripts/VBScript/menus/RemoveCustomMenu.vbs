Rem RemoveCustomMenu.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to remove the menu customization applied by CustomMenu.vbs.
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
	Rem<fragment>
	Set myMainMenu = myInDesign.menus.item("$ID/Main")
	On Error Resume Next
	Set mySpecialFontMenu = myMainMenu.Submenus.Item("Kozuka Mincho Pro")
	mySpecialFontMenu.Delete
	On Error Goto 0
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function