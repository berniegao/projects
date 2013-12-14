//AfterSelectionChanged.jsx
//An InDesign CS6 JavaScript
//
//Shows how to detect changes to the selection.
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
	//Add an event listener that displays the type of the objects in the selection.
	//<fragment>
	var myDocument = app.documents.add();
	myDocument.addEventListener("afterSelectionChanged", myDisplaySelectionType);
	//</fragment>
}
function myTeardown(){
}
//<fragment>
function myDisplaySelectionType(myEvent){
	if(app.documents.length != 0){
		if(app.documents.item(0).selection.length != 0){
			var mySelection = app.documents.item(0).selection;
			var myString = "Selection Contents:\r";
			for(var myCounter = 0; myCounter < mySelection.length; myCounter++){
				myString = myString + mySelection[myCounter].constructor.name + "\r"
			}
			alert(myString);
		}
	}
}
//</fragment>