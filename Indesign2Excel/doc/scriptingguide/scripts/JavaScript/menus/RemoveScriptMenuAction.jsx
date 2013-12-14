//RemoveScriptMenuAction.jsx
//An InDesign CS6 JavaScript
//
//Removes a script menu action and its associated menu item.
//You might have to force InDesign to redraw the menu (by switching
//out of the application and back again) to make the menu item disappear.
#targetengine "session"
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
	try{
		app.scriptMenuActions.item("Display Alert").remove();
	}
	catch(myError){}
	try{
		app.menus.item("$ID/Main").submenus.item("Script Menu Action").remove();
	}
	catch(myError){}
	//</fragment>
}
function myTeardown(){
}