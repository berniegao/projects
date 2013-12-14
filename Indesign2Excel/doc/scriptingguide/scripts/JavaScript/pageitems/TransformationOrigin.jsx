//TransformationOrigin.jsx
//An InDesign CS6 JavaScript
//
//Demonstrates different way to specify the point used for the center of transformation.
main();
function main(){
	mySetup();
	mySnippet();
}
function mySnippet(){
	//<fragment>
	alert("Watch as we rotate the rectangle using different anchor points,\rbounds types, and coordinate spaces.\r\rYou might have to drag the alert aside to\rsee the effect of the transformation.");
	var myPage = app.documents.item(0).pages.item(0);
	var myRectangle = myPage.rectangles.item(0);
	var myNewRectangle = myRectangle.duplicate();
	var myTransformationMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:30});
	//Rotate around the duplicated rectangle's center point.
	myNewRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	//Select the rectangle and display an alert.
	app.select(myNewRectangle);
	alert("Rotated around center anchor.");
	//Undo the transformation.
	app.documents.item(0).undo();
	//Rotate the rectangle around the ruler location [-100, -100]. Note that the anchor point specified here specifes the page
	//containing the point--*not* that transformation point itself. The transformation gets the ruler coordinate [-100, -100] based
	//on that page. Setting the considerRulerUnits parameter to true makes certain that the transformation uses the current
	//ruler units.
	myNewRectangle.transform(CoordinateSpaces.pasteboardCoordinates, [[-100, -100], AnchorPoint.topLeftAnchor], myTransformationMatrix, undefined, true);
	//Move the page guides to reflect the transformation point.
	myPage.guides.item(0).location = -100;
	myPage.guides.item(1).location = -100;
	//Select the rectangle and display an alert.
	app.select(myNewRectangle);
	alert("Rotated around -100x, -100y.");
	//Undo the transformation and the guide moves.
	app.documents.item(0).undo();
	app.documents.item(0).undo();
	app.documents.item(0).undo();
	myNewRectangle.strokeWeight = 12;
	var myBounds = myNewRectangle.visibleBounds;
	//Move the page guides to reflect the transformation point.
	myPage.guides.item(0).location = myBounds[1];
	myPage.guides.item(1).location = myBounds[2];
	//Rotate the rectangle around the outer edge of the lower left corner.
	myNewRectangle.transform(CoordinateSpaces.pasteboardCoordinates, [AnchorPoint.bottomLeftAnchor, BoundingBoxLimits.outerStrokeBounds], myTransformationMatrix, MatrixContent.rotationValue, true);
	//Select the rectangle and display an alert.
	app.select(myRectangle);
	alert("Rotated around the outside edge of the bottom left corner");
	//Undo the transformation and the guide moves.
	app.documents.item(0).undo();
	app.documents.item(0).undo();
	app.documents.item(0).undo();
	app.documents.item(0).undo();
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
	//Create a rectangle.
	var myRectangle = myPage.rectangles.add({geometricBounds:[- 72, - 72, 72, 72]});
	myRectangle.strokeColor = myDocument.swatches.item("Black");
}