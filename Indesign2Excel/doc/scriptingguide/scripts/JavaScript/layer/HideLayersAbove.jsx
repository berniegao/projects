//HideLayersAbove.jsx
//An InDesign CS6 JavaScript
//
//Shows how to work with a range of layers.
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
	//Now hide all of the layers above the current layer.
	var myLayers = myDocument.layers.itemByRange(0, myLayer.index -1);
	//Even though the result contains multiple layers, you can
	//set a property on all of the layers without iterating.
	myLayers.visible = false;
	//</fragment>
}
function myTeardown(){
}