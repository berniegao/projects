//HideOtherLayers.jsx
//An InDesign CS6 JavaScript
//
//Hides all layers except the active layer.
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
	var myTargetLayer = myDocument.activeLayer;
	for(var myCounter = 0; myCounter < myDocument.layers.length; myCounter++){
		//If the layer is not the target layer, hide it.
		if(myDocument.layers.item(myCounter).name != myTargetLayer.name){
			myDocument.layers.item(myCounter).visible = false;
		}
	}
	//</fragment>
}
function myTeardown(){
}