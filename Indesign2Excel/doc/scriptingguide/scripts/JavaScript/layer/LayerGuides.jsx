//LayerGuides.jsx
//An InDesign CS6 JavaScript
//
//Shows how to work with guides on a specific layer.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myDocument.pages.item(0).guides.add({location:72, orientation:HorizontalOrVertical.horizontal});
	myDocument.pages.item(0).guides.add({location:144, orientation:HorizontalOrVertical.horizontal});
	myDocument.pages.item(0).guides.add({location:72, orientation:HorizontalOrVertical.vertical});
	myDocument.pages.item(0).guides.add({location:144, orientation:HorizontalOrVertical.vertical});
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	//<fragment>
	//Given a document "myDocument" and a page "myPage" containing at least one guide...
	//Create a new layer.
	var myLayer = myDocument.layers.add();
	//Move all of the guides on the page to the new layer.
	myPage.guides.everyItem().itemLayer = myLayer;
	myLayer.lockGuides = true;
	myLayer.showGuides = true;
	//</fragment>
}
function myTeardown(){
}