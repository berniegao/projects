//BeforeDisplay.jsx
//An InDesign CS6 JavaScript
//
//Shows how to add a beforeDisplay event listener to
//a script menu action.

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
    var mySampleScriptAction = app.scriptMenuActions.add("Display Message");
    var myEventListener = mySampleScriptAction.eventListeners.add("onInvoke", myOnInvokeHandler, false);
    var mySampleScriptMenu = app.menus.item("$ID/Main").submenus.add("Script Menu Action");
    var mySampleScriptMenuItem = mySampleScriptMenu.menuItems.add(mySampleScriptAction);
    mySampleScriptMenu.eventListeners.add("beforeDisplay", myBeforeDisplayHandler, false);
    //</fragment>
}

function myTeardown(){
}

//<fragment>
//JavaScript function to run before the menu item is drawn.
function myBeforeDisplayHandler(myEvent){
	var mySampleScriptAction = app.scriptMenuActions.item("Display Message");
	if(app.documents.length > 0){
		if(app.selection.length > 0){
			mySampleScriptAction.enabled = true;
		}
		else{
			mySampleScriptAction.enabled = false;
		}
	}
	else{
		mySampleScriptAction.enabled = false;
	}
}
//JavaScript function to run when the menu item is selected.
function myOnInvokeHandler(myEvent){
	myString = app.selection[0].constructor.name;
	alert("The first item in the selection is a " + myString + ".");
}
//</fragment>

