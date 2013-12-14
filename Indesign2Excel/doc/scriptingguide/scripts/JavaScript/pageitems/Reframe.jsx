//Reframe.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the reframe method.
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
	var myTransformationMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:45});
	myRectangle.transform(CoordinateSpaces.spreadCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
}
function mySnippet(){
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);	
	//<fragment>
	//Given a reference to a rectangle "myRectangle"...
	var myDuplicate = myRectangle.duplicate();
	var myTopLeft = myDuplicate.resolve(AnchorPoint.topLeftAnchor, CoordinateSpaces.innerCoordinates, false)[0];
	var myBottomRight = myDuplicate.resolve(AnchorPoint.bottomRightAnchor, CoordinateSpaces.innerCoordinates, false)[0];
	var myWidth = myBottomRight[0]-myTopLeft[0];
	myDuplicate.reframe(CoordinateSpaces.innerCoordinates, [[myTopLeft[0]+myWidth, myTopLeft[1]], [myBottomRight[0]+myWidth, myBottomRight[1]]]);
	//</fragment>
}
function myTeardown(){
}
