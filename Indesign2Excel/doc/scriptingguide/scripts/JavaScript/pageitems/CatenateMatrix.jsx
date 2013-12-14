//CatenateMatrix.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the catenateMatrix method.
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
	var myTransformationMatrixA = app.transformationMatrices.add({counterclockwiseRotationAngle:30});
	var myTransformationMatrixB = app.transformationMatrices.add({horizontalTranslation:12, verticalTranslation:12});
	var myNewRectangle = myRectangle.duplicate();
	//Rotate the duplicated rectangle.
	myNewRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrixA);
	myNewRectangle = myRectangle.duplicate();
	//Move the duplicate (unrotated) rectangle.
	myNewRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrixB);
	//Merge the two transformation matrices.
	myTransformationMatrix = myTransformationMatrixA.catenateMatrix(myTransformationMatrixB);
	myNewRectangle = myRectangle.duplicate();
	//The duplicated rectangle will be both moved and rotated.
	myNewRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	//</fragment>
}
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	var myPage = myDocument.pages.item(0);
	var myRectangle = myPage.rectangles.add({geometricBounds:[72, 72, 144, 144]});
	myDocument.zeroPoint = [108, 108];
}
function myTeardown(){
}