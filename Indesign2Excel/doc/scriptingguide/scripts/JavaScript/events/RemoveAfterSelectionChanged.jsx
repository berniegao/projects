//RemoveAfterSelectionChanged.jsx
//An InDesign CS6 JavaScript
//
//Removes the event listener added by the AfterSelectionChanged script.
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
	if(app.documents.length != 0){
		//<fragment>
		var myDocument = app.documents.item(0);
		myDocument.removeEventListener("afterSelectionChanged", myDisplaySelectionType);
		//</fragment>
	}
}
function myTeardown(){
}