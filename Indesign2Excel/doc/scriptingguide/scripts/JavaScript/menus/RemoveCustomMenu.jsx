//RemoveCustomMenu.jsx
//An InDesign CS6 JavaScript
//
//Shows how to remove the menu customization applied by CustomMenu.jsx.
//You might have to force InDesign to redraw the menu (by switching
//out of the application and back again) to make the menu item disappear.
var myMainMenu = app.menus.item("$ID/Main");
try{
	var mySpecialFontMenu = myMainMenu.submenus.item("Kozuka Mincho Pro");
	mySpecialFontMenu.remove();
}catch(myError){}
