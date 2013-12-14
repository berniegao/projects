//RotateMatrix.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the rotateMatrix method.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySnippet(){
	//<fragment>
	//Given a document with a rectangle on page 1...
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);
	app.transformPreferences.whenScaling = WhenScalingOptions.adjustScalingPercentage;
	var myTransformationMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:0});
	//rotateMatrix can take the following parameters: byAngle, byCosine, bySine;
	//Replace the current matrix with the rotated matrix.
	//The following statements are equivalent (0.25881904510252 is the sine of 15 degrees, 0.96592582628907 is the cosine).
	//myTransformationMatrix = myTransformationMatrix.rotateMatrix(15);
	//myTransformationMatrix = myTransformationMatrix.rotateMatrix(undefined, 0.96592582628907);
	//myTransformationMatrix = myTransformationMatrix.rotateMatrix(undefined, undefined, 0.25881904510252);
	myTransformationMatrix = myTransformationMatrix.rotateMatrix(15);
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	//</fragment>
}
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	var myPage = myDocument.pages.item(0);
	var myRectangle = myPage.rectangles.add({geometricBounds:[72, 72, 144, 144]});
}
function myTeardown(){
}