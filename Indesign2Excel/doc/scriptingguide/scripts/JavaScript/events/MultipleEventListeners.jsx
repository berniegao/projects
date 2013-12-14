//MultipleEventListeners.jsx
//An InDesign CS6 JavaScript
//
//Shows that an event can have multiple event listeners associated with it.
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
	var myApplicationEventListener = app.eventListeners.add("beforeImport", myEventInfo);
	var myDocumentEventListener = app.documents.item(0).eventListeners.add("beforeImport", myEventInfo);
    //</fragment>
}
function myTeardown(){
}
//<fragment>
function myEventInfo(myEvent){
	var myString = "Current Target: " + myEvent.currentTarget.name;
	alert(myString);
}
//</fragment>