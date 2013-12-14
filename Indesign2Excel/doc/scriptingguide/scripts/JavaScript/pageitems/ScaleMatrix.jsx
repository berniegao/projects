//ScaleMatrix.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the scaleMatrix method.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySnippet(){
	//<fragement>
	//Given a document with a rectangle on page 1...
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);
	var myTransformationMatrix = app.transformationMatrices.add({horizontalScaleFactor:1, verticalScaleFactor:1});
	myTransformationMatrix = myTransformationMatrix.scaleMatrix(.5, .5);
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	//</fragement>
}
function mySetup(){
	app.transformPreferences.whenScaling = WhenScalingOptions.adjustScalingPercentage;
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	var myPage = myDocument.pages.item(0);
	var myRectangle = myPage.rectangles.add({geometricBounds:[72, 72, 144, 144]});
}
function myTeardown(){
}