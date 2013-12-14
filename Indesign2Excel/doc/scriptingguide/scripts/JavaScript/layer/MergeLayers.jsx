//MergeLayers.jsx
//An InDesign CS6 JavaScript
//
//Shows how to merge layers.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.layers.add();
}
function mySnippet(){
    var myDocument = app.documents.item(0);
	//<fragment>
	//Given a document "myDocument" containing at least two layers...
	var myLayerA = myDocument.layers.item(0);
	var myLayerB = myDocument.layers.item(1);
	myLayerA.merge(myLayerB);
	//</fragment>
}
function myTeardown(){
}