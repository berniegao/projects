//RemoveAllScriptMenuActions.jsx
//An InDesign CS6 JavaScript
//
//Removes all current script menu actions.
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
	app.scriptMenuActions.everyItem().remove();
	//</fragment>
}
function myTeardown(){
}