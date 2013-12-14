#targetengine "session"
//ScriptMenuAction.jsx
//An InDesign CS6 JavaScript
//
//Adds a menu at the end of the main menu bar.
var mySampleScriptAction = app.scriptMenuActions.add("Display Message");
var myEventListener = mySampleScriptAction.eventListeners.add("onInvoke", function(){alert("This menu item was added by a script.");});
//If the submenu "Script Menu Action" does not already exist, create it.
try{
	var mySampleScriptMenu = app.menus.item("$ID/Main").submenus.item("Script Menu Action");
	mySampleScriptMenu.title;
}
catch (myError){
	var mySampleScriptMenu = app.menus.item("$ID/Main").submenus.add("Script Menu Action");
}
var mySampleScriptMenuItem = mySampleScriptMenu.menuItems.add(mySampleScriptAction);
