// ReleaseCompoundPath.jsx
// An InDesign CS6 JavaScript
// 
// Shows how to release a compound path.
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
	myRectangle.makeCompoundPath(myOval);
}
function mySnippet(){
	var myPolygon = app.documents.item(0).pages.item(0).polygons.item(0);
	// <fragment>
	// Given a polygon "myPolygon" (all compound paths are type Polygon)...
	var myPageItems = myPolygon.releaseCompoundPath();
	// </fragment>
}
function myTeardown(){
}