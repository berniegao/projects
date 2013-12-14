//DeleteLayer.jsx
//An InDesign CS6 JavaScript
//
// Shows how to delete a layer.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	var myLayer = myDocument.layers.add({name:"Delete This Layer"});
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	//<fragment>
	//Given a document "myDocument" containing a layer named "Delete This Layer"...
	var myLayer = myDocument.layers.item("Delete This Layer");
	myLayer.remove();
	//</fragment>
}
function myTeardown(){
}