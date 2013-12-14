//Resize.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the resize method.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	var myPage = myDocument.pages.item(0);
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	var myRectangle = myPage.rectangles.add({geometricBounds:[72, 72, 144, 144], strokeWeight:4});
	var myTransformationMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:30});
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);	
}
function mySnippet(){
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);	
	//<fragment>
	//Given a reference to a rectangle "myRectangle"...
	var myDuplicate = myRectangle.duplicate();
	myDuplicate.resize(CoordinateSpaces.innerCoordinates, AnchorPoint.centerAnchor, ResizeMethods.multiplyingCurrentDimensionsBy, [2, 2]);
	//</fragment>
}
function myTeardown(){
}
