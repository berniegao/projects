//TransformValuesOf.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the transformValuesOf method to return an array of transformation matrices.
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
	//Note that transformValuesOf() always returns an array containing a single transformationMatrix.
	var myTransformArray = myRectangle.transformValuesOf(CoordinateSpaces.pasteboardCoordinates);	
	var myTransformationMatrix = myTransformArray[0];
	var myRotationAngle = myTransformationMatrix.counterclockwiseRotationAngle;
	var myShearAngle = myTransformationMatrix.clockwiseShearAngle;
	var myXScale = myTransformationMatrix.horizontalScaleFactor;
	var myYScale = myTransformationMatrix.verticalScaleFactor;
	var myXTranslate = myTransformationMatrix.horizontalTranslation;
	var myYTranslate = myTransformationMatrix.verticalTranslation;
	var myString = "Rotation Angle: " + myRotationAngle + "\r";
	myString += "Shear Angle: " + myShearAngle + "\r";
	myString += "Horizontal Scale Factor: " + myXScale + "\r";
	myString += "Vertical Scale Factor: " + myYScale + "\r";
	myString += "Horizontal Translation: " + myXTranslate + "\r";
	myString += "Vertical Translation: " + myYTranslate + "\r\r";
	myString += "Note the Horizontal Translation and Vertical Translation\r"
	myString += "values--objects created using scripting are actually created at the\r";
	myString += "spread origin and then moved to the ruler coordinates you specify."
	alert(myString);
	//</fragment>
}
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	var myPage = myDocument.pages.item(0);
	//Create a rectangle.
	var myRectangle = myPage.rectangles.add({geometricBounds:[- 72, - 72, 72, 72]});
}
function myTeardown(){
}