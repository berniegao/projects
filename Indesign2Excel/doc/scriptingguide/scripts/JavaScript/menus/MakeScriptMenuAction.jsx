//MakeScriptMenuAction.jsx
//An InDesign CS6 JavaScript
//
//Adds a menu at the end of the main menu bar.
#targetengine "session"
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
}
function mySnippet(){
    //<fragment>
    var mySampleScriptAction = app.scriptMenuActions.add("Display Alert");
    var myEventListener = mySampleScriptAction.eventListeners.add("onInvoke", myFunction, false);
    //If the submenu "Script Menu Action" does not already exist, create it.
    //You might have to force InDesign to redraw the menu (by switching
    //out of the application and back again) to make the menu item appear.
    try{
    	var mySampleScriptMenu = app.menus.item("$ID/Main").submenus.item("Script Menu Action");
    	mySampleScriptMenu.title;
    }
    catch (myError){
    	var mySampleScriptMenu = app.menus.item("$ID/Main").submenus.add("Script Menu Action");
    }
    var mySampleScriptMenuItem = mySampleScriptMenu.menuItems.add(mySampleScriptAction);
    //</fragment>
}
function myTeardown(){
}
//<fragment>
function myFunction(){
	alert("This menu item was added by a script.");
}
//</fragment>

