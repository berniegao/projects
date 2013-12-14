//RemoveMultipleEventListeners.jsx
//An InDesign CS6 JavaScript
//
//Removes the event listeners added by the MultipleEventListeners.jsx script.
#targetengine "session"
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
}
function mySnippet(){
    //<fragment>
	app.removeEventListener("beforeImport", myEventInfo);
	app.documents.item(0).removeEventListener("beforeImport", myEventInfo);
    //</fragment>
}
function myTeardown(){
}