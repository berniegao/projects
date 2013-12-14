//ResolveLocation.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the resolve method.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySnippet(){
	//<fragment>
	//Given a document with a group on page 1 that contains at least one rectangle...
	var myPage = app.documents.item(0).pages.item(0);
	var myRectangle = myPage.groups.item(0).rectangles.item(0);
	//Template for resolve():
	//PageItem.resolve (location:any, in: CoordinateSpaces , consideringRulerUnits:boolean)
	//Get a ruler coordinate in pasteboard coordinates.
	var myPageLocation = myRectangle.resolve([[72, 72], AnchorPoint.topRightAnchor], CoordinateSpaces.pasteboardCoordinates, true);
	//resolve() returns an array containing a single item.
	alert("X: " + myPageLocation[0][0] + "\rY: " + myPageLocation[0][1]);
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
	//Rotate the rectangle around its center point.
	var myTransformationMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:45});
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	//Add a series of ovals.
	var myOvalA = myPage.ovals.add({geometricBounds:[-84, -84, -60, -60]});
	var myOvalB = myPage.ovals.add({geometricBounds:[84, -84, 60, -60]});
	var myOvalC = myPage.ovals.add({geometricBounds:[-84, 84, -60, 60]});
	var myOvalD = myPage.ovals.add({geometricBounds:[84, 84, 60, 60]});
	//Group the rectangle and the ovals.
	var myGroup = myPage.groups.add([myRectangle, myOvalA, myOvalB, myOvalC, myOvalD]);
	//Rotate the group.
	myGroup.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
}
function myTeardown(){
}