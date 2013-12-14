//LockLayersBelow.jsx
//An InDesign CS6 JavaScript
//
//Shows how to lock all layers below the active layer.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	for(var myCounter = 0; myCounter < 10; myCounter++){
		myDocument.layers.add();
	}
	myDocument.activeLayer = myDocument.layers.item(4);
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	//<fragment>
	//Given a document "myDocument"...
	var myTargetLayer = myDocument.activeLayer;
	var myLayers = myDocument.layers.itemByRange(myDocument.layers.length-1, myTargetLayer.index +1);
	myLayers.locked = true;
	//</fragment>
}
function myTeardown(){
}
