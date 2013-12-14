//RotatePageItem.jsx
//An InDesign CS6 JavaScript
//
//Shows how to rotate a page item.
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
	var myRectangle = myDocument.pages.item(0).rectangles.add();
	myRectangle.paths.item(0).entirePath = [[72, 72], [72, 144], [144, 144], [144, 72]];
}
function mySnippet(){
	//<fragment>
	//Create a transformation matrix.
	var myTransformationMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:30});
	//Given a rectangle on page 1 of the active document...
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);
	//Rotate the rectangle 30 degrees counterclockwise.
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	//</fragment>
}
function myTeardown(){
}