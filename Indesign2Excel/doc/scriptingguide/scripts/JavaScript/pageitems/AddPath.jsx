// AddPath.jsx
// An InDesign CS6 JavaScript
// 
// Shows how to use the add path method.
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
	var myOval = myPage.ovals.add();
	myOval.geometricBounds = [108, 108, 180, 180];
}
function mySnippet(){
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);
	var myOval = app.documents.item(0).pages.item(0).ovals.item(0);
	// <fragment>
	// Given a rectangle "myRectangle" and an Oval "myOval"...
	myRectangle.addPath(myOval);
	// </fragment>
}
function myTeardown(){
}