//TransformAgain.jsx
//An InDesign CS6 JavaScript
//
//Demonstrates the use of the transformAgain method(s).
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySnippet(){
	//</fragment>
	//Given a document with a rectangle on page 1...
	var myPage = app.documents.item(0).pages.item(0);
	var myRectangle = myPage.rectangles.item(0);
	var myBounds = myRectangle.geometricBounds;
	var myX1 = myBounds[1];
	var myY1 = myBounds[0];
	var myRectangleA = myPage.rectangles.add({geometricBounds:[myY1-12, myX1-12, myY1+12, myX1+12]});
	var myTransformationMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:45});
	myRectangleA.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	var myRectangleB = myRectangleA.duplicate();
	myRectangleB.transform(CoordinateSpaces.pasteboardCoordinates, [[0,0], AnchorPoint.topLeftAnchor], myTransformationMatrix, undefined, true);
	var myRectangleC = myRectangleB.duplicate();
	myRectangleC.transformAgain();
	var myRectangleD = myRectangleC.duplicate();
	myRectangleD.transformAgain();
	var myRectangleE = myRectangleD.duplicate();
	myRectangleE.transformAgain();
	var myRectangleF = myRectangleE.duplicate();
	myRectangleF.transformAgain();
	var myRectangleG = myRectangleF.duplicate();
	myRectangleG.transformAgain();
	var myRectangleH = myRectangleG.duplicate();
	myRectangleH.transformAgain();
	myRectangleB.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	myRectangleD.transformAgain();
	myRectangleF.transformAgain();	
	myRectangleH.transformAgain();
	//</fragment>
}
function mySetup(){
	var myDocument = app.documents.add();
	app.transformPreferences.whenScaling = WhenScalingOptions.adjustScalingPercentage;
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;	
	var myPage = myDocument.pages.item(0);
	var myPageBounds = myPage.bounds;
	var myPageXCenter = (myPageBounds[3]-myPageBounds[1])/2;
	var myPageYCenter = (myPageBounds[2]-myPageBounds[0])/2;
	myDocument.zeroPoint = [myPageXCenter, myPageYCenter];
	myPage.guides.add({orientation:HorizontalOrVertical.horizontal, location:0});
	myPage.guides.add({orientation:HorizontalOrVertical.vertical, location:0});
	var myRectangle = myPage.rectangles.add({geometricBounds:[- 72, - 72, 72, 72]});
}
function myTeardown(){
}