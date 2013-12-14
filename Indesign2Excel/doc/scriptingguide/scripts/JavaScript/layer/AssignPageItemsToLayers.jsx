//AssignPageItemsToLayers.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create page items on a given layer
//and how to move existing page items to a layer.
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
	//Add layers.
	myDocument.layers.add({name:"Rectangles"});
	myDocument.layers.add({name:"Ovals"});
	myDocument.layers.add({name:"TextFrames"});
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	//<fragment>
	//Given a reference to a page "myPage," and a document "myDocument,"
	//create a text frame on a layer named "TextFrames"
	var myTextFrame = myPage.textFrames.add(myDocument.layers.item("TextFrames"));
	myTextFrame.geometricBounds = [72, 72, 144, 144];
	//Create a rectangle on the current target layer.
	var myRectangle = myPage.rectangles.add({geometricBounds:[72, 144, 144, 216]});
	//Move the rectangle to a specific layer.
	myRectangle.itemLayer = myDocument.layers.item("Rectangles");
	//Create a series of ovals.
	for(var myCounter = 72; myCounter < 172; myCounter+=10){
		myPage.ovals.add({geometricBounds:[216, myCounter, 226, myCounter+10]});
	}
	//Move all of the ovals on the page to a specific layer.
	myPage.ovals.everyItem().itemLayer = myDocument.layers.item("Ovals");
	//</fragment>
}
function myTeardown(){
}