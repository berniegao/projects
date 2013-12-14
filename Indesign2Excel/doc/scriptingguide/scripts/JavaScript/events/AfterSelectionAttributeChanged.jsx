//AfterSelectionAttributeChanged.jsx
//An InDesign CS6 JavaScript
//
//Shows how to detect changes to the attributes of the selection. In this example,
//we'll check the fill and stroke color of the selection. If either property has been
//set to the "Registration" color, we'll display an alert when/if the attributes
//of the selection change.
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
	//Add an event listener that checks the color of the selection.
	//<fragment>
	var myDocument = app.documents.add();
	myDocument.eventListeners.add("afterSelectionAttributeChanged", myCheckForRegistration);
	//</fragment>
}
function myTeardown(){
}
//<fragment>
function myCheckForRegistration(myEvent){
	var myRegistrationSwatchUsed = false;
	if(app.selection.length != 0){		
		for(var myCounter = 0; myCounter < app.selection.length; myCounter++){
			if(
				(
					app.documents.item(0).selection[myCounter].fillColor == app.documents.item(0).swatches.item("Registration")
				)
				||
				(
					app.documents.item(0).selection[myCounter].strokeColor == app.documents.item(0).swatches.item("Registration")
				)
			){
				myRegistrationSwatchUsed = true;
			}
		}
	}
	if(myRegistrationSwatchUsed == true){
		alert("The Registration swatch is applied to some of the\robjects in the selection. Did you really intend to apply this swatch?");
	}
}
//</fragment>
