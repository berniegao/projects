//RemovePathPoint.jsx
//An InDesign CS6 JavaScript
//
//Shows how to remove a point from a path.
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
	var myGraphicLine = myPage.graphicLines.add();
	myGraphicLine.paths.item(0).pathPoints.item(0).anchor = [72, 72];
	myGraphicLine.paths.item(0).pathPoints.item(1).anchor = [72, 144];
	var myPathPoint = myGraphicLine.paths.item(0).pathPoints.add();
	myPathPoint.anchor = [144, 144];
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	var myPolygon = myPage.polygons.item(0);
	//<fragment>
	//Given a polygon "myPolygon", remove the 
	//last path point in the first path.
	myPolygon.paths.item(0).pathPoints.item(-1).remove();
	//</fragment>
}
function myTeardown(){
}