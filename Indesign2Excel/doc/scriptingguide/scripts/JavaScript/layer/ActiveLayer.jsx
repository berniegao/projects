//ActiveLayer.jsx
//An InDesign CS6 JavaScript
//
//Shows how to get a reference to the active layer.
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
	var myLayer = myDocument.activeLayer;
	//</fragment>
	alert("Active layer: " + myLayer.name);
}
function myTeardown(){
}