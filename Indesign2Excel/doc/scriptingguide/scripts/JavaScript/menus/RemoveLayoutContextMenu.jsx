//RemoveLabelGraphicMenu.jsx
//An InDesign CS6 JavaScript
//
//Removes the Create Graphic Label script menu item (installed by the
//LayoutContextMenu.jsx tutorial script) from the Layout context menu.
#targetengine "session"
main();
function main(){
	var myMenu = app.menus.item("$ID/RtMouseLayout");
	if(myCheckForMenuItem(myMenu, "Label Graphic") == true){
		var myMenuItem = myMenu.menuItems.item("Label Graphic");
		myMenuItem.remove();
	}
	if(myCheckForMenuItem("Create Graphic Label") == true){
		var myMenuItem = myMenu.menuItems.item("Create Graphic Label");
		myMenuItem.remove();
	}
	if(myCheckForScriptMenuAction("Label Graphic") == true){
		var myScriptMenuAction = app.scriptMenuActions.item("Label Graphic");
		myScriptMenuAction.remove();
	}
}
function myCheckForMenuItem(myMenu, myString){
	try{
		var myMenuItem = myMenu.menuItems.item(myString);
		myMenuItem.name;
		myResult = true;
	}
	catch(myError){
		myResult = false;
	}
	return myResult;
}
function myCheckForScriptMenuAction(myString){
	try{
		var myScriptMenuAction = app.scriptMenuActions.item(myString);
		myScriptMenuAction.name;
		myResult = true;
	}
	catch(myError){
		myResult = false;
	}
	return myResult;
}