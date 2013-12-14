//PathText.jsx
//An InDesign CS6 JavaScript
//
//Shows how to add text to a path.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
	var myPage = myDocument.pages.item(0);
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	//Create a rectangle on the first page.
	var myRectangle = myPage.rectangles.add({geometricBounds:[72, 72, 288, 288]});
}
function mySnippet(){
	var myDocument = app.activeDocument;
	//<fragment>
	//Given a document "myDocument" with a rectangle on page 1...
	var myPage = myDocument.pages.item(0);
	var myRectangle = myPage.rectangles.item(0);
	var myTextPath = myRectangle.textPaths.add({contents:"This is path text."});
	//</fragment>
}
function myTeardown(){
}

