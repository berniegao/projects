//InvertMatrix.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the invertMatrix method.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	app.transformPreferences.whenScaling = WhenScalingOptions.adjustScalingPercentage;
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	var myPage = myDocument.pages.item(0);
	var myRectangle = myPage.rectangles.add({geometricBounds:[72, 72, 144, 144]});
	myDocument.zeroPoint = [108, 108];
}
function mySnippet(){
	//<fragment>
	//Given a document with a rectangle on page 1...
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);
	var myTransformationMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:30, horizontalTranslation:12, verticalTranslation:12});
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	var myNewRectangle = myRectangle.duplicate();
	//Move the duplicated rectangle to the location of the original 
	//rectangle by inverting, then applying the transformation matrix.
	myTransformationMatrix = myTransformationMatrix.invertMatrix();
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	//</fragment>
}
function myTeardown(){
}