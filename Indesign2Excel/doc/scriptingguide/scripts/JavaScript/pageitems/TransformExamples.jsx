//TransformExamples.jsx
//An InDesign CS6 JavaScript
//
//A brief demonstration of the  transform method.
//
//The transform method has the following parameters:
//
//Coordinate Space
//	CoordinateSpaces.pasteboardCoordinates
//	CoordinateSpaces.parentCoordinates
//	CoordinateSpaces.innerCoordinates
//Definition: The coordinate space to use for the transformation.
//Note that none of these coordinate spaces correspond to the rulers
//you see in InDesign. Pasteboard coordinates
//
//From
//	An array of two numbers (in pasteboard coordinates)
//	An AnchorPoint enumeration (a point on the object)
//	An array of two numbers and an anchor point: [[x, y] AnchorPoint] 
//	(specifies a point on the page/spread containing the anchor point)
//	There are other ways to specify the transformation origin, but
//	the above are the most important.
//Definition: The center of transformation.
//
//With Matrix
//	Transformation Matrix
//Definition: Specify the matrix used to transform the object.
//
//Replacing Current
//	Boolean
//Definition: If true, replace the current transformation values of the object
//with the values of the transformation matrix.
//
//Considering Ruler Units
//	Boolean
//Definition: If true, use the current ruler units for the anchor specification (if false, points are used).
//
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
	var myRectangle = myDocument.pages.item(0).rectangles.add({geometricBounds:[72, 72, 144, 288]});
}
function mySnippet(){
	//</fragment>
	//Given a document with a rectangle on page 1...
	var myDocument = app.documents.item(0);
	var myRectangle = myDocument.pages.item(0).rectangles.item(0);
	//Rotate a the rectangle around its center point.
	var myRotateMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:27});
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myRotateMatrix);
	alert("Rotated around center anchor.");
	myDocument.undo();
	//Scale a rectangle "myRectangle" around its center point.
	var myScaleMatrix = app.transformationMatrices.add({horizontalScaleFactor:.5, verticalScaleFactor:.5});
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myScaleMatrix);
	alert("Scaled around center anchor.");
	myDocument.undo();
	//Shear a rectangle "myRectangle" around its center point.
	var myShearMatrix =app.transformationMatrices.add({clockwiseShearAngle:30});
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myShearMatrix);
	alert("Sheared around center anchor.");
	myDocument.undo();
	//Rotate a rectangle "myRectangle" around a specified ruler point ([72, 72]).
	var myRotateMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:27});
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, [[72, 72], AnchorPoint.topLeftAnchor], myRotateMatrix, undefined, true);
	alert("Rotated around 72x, 72y.");
	myDocument.undo();
	//Scale a rectangle "myRectangle" around a specified ruler point ([72, 72]).
	var myScaleMatrix = app.transformationMatrices.add({horizontalScaleFactor:.5, verticalScaleFactor:.5});
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, [[72, 72], AnchorPoint.topLeftAnchor], myScaleMatrix, undefined, true);
	alert("Scaled around 72x, 72y");
	myDocument.undo();
	//</fragment>
}
function myTeardown(){
}
