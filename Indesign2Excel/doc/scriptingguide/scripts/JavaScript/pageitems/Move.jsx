// Move.jsx
// An InDesign CS6 JavaScript
// 
// Shows how to use the move method.
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
	myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
	var myPage = myDocument.pages.item(0);
	var myRectangle = myPage.rectangles.add();
	myRectangle.geometricBounds = [72, 72, 144, 144];
}
function mySnippet(){
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);
	// <fragment>
	// Given a reference to a rectangle "myRectangle"...
	// Move the rectangle to the location (12, 12).
	// Absolute move:
	myRectangle.move([12, 12]);
	// Move the rectangle *by* 12 points horizontally, 12 points vertically.
	// Relative move (note the use of "undefined" in the first parameter):
	myRectangle.move(undefined, [12, 12]);
	// Move the rectangle to another page (rectangle appears at (0,0).
	var myPage = app.documents.item(0).pages.add();
	myRectangle.move(myPage);
	// To move a page item to another document, use the Duplicate method.
	// </fragment>
}
function myTeardown(){
}