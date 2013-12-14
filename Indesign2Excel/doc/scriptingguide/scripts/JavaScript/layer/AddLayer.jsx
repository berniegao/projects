//AddLayer.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create a new layer.
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
	var myDocument = app.documents.item(0);
	//<fragment>
	//Given a document "myDocument"...
	var myLayer = myDocument.layers.add();
	//</fragment>
}
function myTeardown(){
}