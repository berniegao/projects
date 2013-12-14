//RelativeLayerReferences.jsx
//An InDesign CS6 JavaScript
//
//Shows how to get references to layers relative to a given layer.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	//Add several layers.
	for(var myCounter = 0; myCounter < 10; myCounter++){
		myDocument.layers.add();
	}
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	//<fragment>
	//Given a document "myDocument"...
	var myLayer = myDocument.layers.item(4);
	myDocument.activeLayer = myLayer;
	var myNextLayer = myDocument.layers.nextItem(myLayer);
	var myPreviousLayer = myDocument.layers.previousItem(myLayer);
	var myString = "The layer below the target layer is " + myNextLayer.name + "\r";
	myString += "The layer above the target layer is " + myPreviousLayer.name;
	alert(myString);
	//</fragment>
}
function myTeardown(){
}