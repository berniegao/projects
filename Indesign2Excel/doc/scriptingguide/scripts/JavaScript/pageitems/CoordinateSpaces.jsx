// CoordinateSpaces.jsx
// An InDesign CS6 JavaScript
// 
// Demonstrates the differences between the different coordinate
// systems (inner, parent, and pasteboard) used as parameters
// for the transform method.
//
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySnippet(){
	//<fragment>
	var myRectangle = app.documents.item(0).pages.item(0).groups.item(0).rectangles.item(0);
	myString = "The page contains a group which has been\r"
	myString += "rotated 45 degrees (counterclockwise).\r"
	myString += "The rectangle inside the group was\r"
	myString += "rotated 45 degrees counterclockwise\r"
	myString += "before it was added to the group.\r"
	myString += "Watch as we apply a series of scaling\r"
	myString += "operations in different coordinate spaces.\r"
	myString += "(You might need to move the alert aside\r"
	myString += "to see the effect of the transformations.)"
	alert(myString);
	// Create a transformation matrix with horizontal scale factor = 2.
	var myTransformationMatrix = app.transformationMatrices.add(2);
	// Transform the rectangle using inner coordinates.
	myRectangle.transform(CoordinateSpaces.innerCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	// Select the rectangle and display an alert.
	app.select(myRectangle);
	alert("Transformed by inner coordinates.");
	// Undo the transformation.
	app.documents.item(0).undo();
	// Transform using parent coordinates.
	myRectangle.transform(CoordinateSpaces.parentCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	app.select(myRectangle);
	alert("Transformed by parent coordinates.");
	app.documents.item(0).undo();
	// Transform using pasteboard coordinates.
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	app.select(myRectangle);
	alert("Transformed by pasteboard coordinates.");
	app.documents.item(0).undo();
	//</fragment>
}
function mySetup(){
	var myDocument = app.documents.add();
	app.transformPreferences.whenScaling = WhenScalingOptions.adjustScalingPercentage;
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	var myPage = myDocument.pages.item(0);
	myPageBounds = myPage.bounds;
	myPageXCenter = (myPageBounds[3]-myPageBounds[1])/2;
	myPageYCenter = (myPageBounds[2]-myPageBounds[0])/2;
	myDocument.zeroPoint = [myPageXCenter, myPageYCenter];
	var myGuide = myPage.guides.add();
	myGuide.orientation = HorizontalOrVertical.horizontal;
	myGuide.location = 0;
	var myGuide = myPage.guides.add();
	myGuide.orientation = HorizontalOrVertical.vertical;
	myGuide.location = 0;
	// Create a rectangle.
	var myRectangle = myPage.rectangles.add();
	myRectangle.geometricBounds = [- 72, - 72, 72, 72];
	// Rotate the rectangle around its center point.
	var myTransformationMatrix = app.transformationMatrices.add(undefined, undefined, undefined, 45)
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	// Add a series of ovals.
	var myOvalA = myPage.ovals.add();
	myOvalA.geometricBounds = [-84, -84, -60, -60];
	var myOvalB = myPage.ovals.add();
	myOvalB.geometricBounds = [84, -84, 60, -60];
	var myOvalC = myPage.ovals.add();
	myOvalC.geometricBounds = [-84, 84, -60, 60];
	var myOvalD = myPage.ovals.add();
	myOvalD.geometricBounds = [84, 84, 60, 60];
	// Group the rectangle and the ovals.
	var myGroup = myPage.groups.add([myRectangle, myOvalA, myOvalB, myOvalC, myOvalD]);
	// Rotate the group.
	myGroup.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
}
function myTeardown(){
}