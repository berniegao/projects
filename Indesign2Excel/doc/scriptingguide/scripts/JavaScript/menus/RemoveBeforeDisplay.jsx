//RemoveBeforeDisplay.jsx
//An InDesign CS6 JavaScript
#targetengine "session"
//
//Removes the script menu action and submenu created by the BeforeDisplay.jsx tutorial script.
//You might have to force InDesign to redraw the menu (by switching
//out of the application and back again) to make the menu item disappear.
try{
	var mySampleScriptAction = app.scriptMenuActions.item("Display Message");
	mySampleScriptAction.remove();
}catch(myError){}
try{
	var mySampleScriptMenu = app.menus.item("$ID/Main").submenus.item("Script Menu Action");
	mySampleScriptMenu.remove();
}catch(myError){}