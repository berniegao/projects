//ShearMatrix.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the shearMatrix method.
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
	var myTransformationMatrix = app.transformationMatrices.add({clockwiseShearAngle:0});
	//shearMatrix can take the following parameters: byAngle, bySlope;
	//Replace the current matrix with the sheared matrix.
	//The following statements are equivalent. slope = rise/run--so a 45 degree slope is 1.
	//myTransformationMatrix = myTransformationMatrix.shearMatrix(45);
	//myTransformationMatrix = myTransformationMatrix.shearMatrix(undefined, 1);	
	myTransformationMatrix = myTransformationMatrix.shearMatrix(45);
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	//</fragment>
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