// AddPathPoint.jsx
// An InDesign CS6 JavaScript
// 
// Shows how to add a point to a path without using the 
// EntirePath property.
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
	var myPage = myDocument.pages.item(0);
	var myGraphicLine = myPage.graphicLines.add();
	myGraphicLine.paths.item(0).pathPoints.item(0).anchor = [72, 72];
	myGraphicLine.paths.item(0).pathPoints.item(1).anchor = [72, 144];
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	var myGraphicLine = myPage.graphicLines.item(0);
	// <fragment>
	// Given a graphic line "myGraphicLine"...
	var myPathPoint = myGraphicLine.paths.item(0).pathPoints.add();
	// Move the path point to a specific location.
	myPathPoint.anchor = [144, 144];
	// </fragment>
}
function myTeardown(){
}