//BasicLayerProperties.jsx
//An InDesign CS6 JavaScript
//
//Shows how to work with basic layer properties.
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
	myLayer.name = "myLayer";
	myLayer.layerColor = UIColors.CHARCOAL;
	myLayer.ignoreWrap = false;
	myLayer.visible = true;
	//</fragment>
}
function myTeardown(){
}