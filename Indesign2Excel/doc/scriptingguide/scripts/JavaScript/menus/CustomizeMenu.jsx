//CustomizeMenu.jsx
//An InDesign CS6 JavaScript
//
//Shows how to add a menu item to an existing menu. To remove
//the custom menu, run the RemoveSpecialFontMenu.jsx script.
main();
function main(){
	mySetup();
	mySnippet()
	myTeardown()
}
function mySetup(){
}
function mySnippet(){
	//<fragment>
	var myMainMenu = app.menus.item("Main");
	var myTypeMenu = myMainMenu.menuElements.item("Type");
	var myFontMenu = myTypeMenu.menuElements.item("Font");
	var myKozukaMenu = myFontMenu.submenus.item("Kozuka Mincho Pro ");
	var mySpecialFontMenu = myMainMenu.submenus.add("Kozuka Mincho Pro");
	for(myCounter = 0;myCounter < myKozukaMenu.menuItems.length; myCounter++){
		var myAssociatedMenuAction = myKozukaMenu.menuItems.item(myCounter).associatedMenuAction;
		mySpecialFontMenu.menuItems.add(myAssociatedMenuAction);
	}
	//</fragment>
}
function myTeardown(){
}