// Duplicate.jsx
// An InDesign CS6 JavaScript
// 
// Shows how to use the duplicate method.
main
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
	var myPage = myDocument.pages.item(0)
	var myRectangle = myPage.rectangles.add();
	myRectangle.geometricBounds = [72, 72, 144, 144];
}
function mySnippet(){
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);
	// <fragment>
	// Given a reference to a rectangle "myRectangle"...
	// Duplicate the rectangle and move the 
	// duplicate to the location (12, 12).
	// Absolute move:
	var myDuplicate = myRectangle.duplicate([12, 12]);
	// Duplicate the rectangle and move the duplicate *by* 12
	// points horizontally, 12 points vertically.
	// Relative move (note use of "undefined" in the first parameter):
	var myDuplicate = myRectangle.duplicate(undefined, [12, 12]);
	// Duplicate the rectangle to another page (rectangle appears at (0,0).
	var myPage = app.documents.item(0).pages.add();
	var myDuplicate = myRectangle.duplicate(myPage);
	// Duplicate the rectangle to another document.
	var myDocument = app.documents.add();
	var myDuplicate = myRectangle.duplicate(myDocument.pages.item(0));
	// </fragment>
}
function myTeardown(){
}