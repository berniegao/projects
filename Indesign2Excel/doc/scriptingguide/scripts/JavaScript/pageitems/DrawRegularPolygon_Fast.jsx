// DrawRegularPolygon_Fast.jsx
// An InDesign CS6 JavaScript
// 
// Shows how to draw a regular polygon around a specific location
// using the entirePath property to set path point locations.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myPageWidth = myDocument.documentPreferences.pageWidth;
	myPageHeight = myDocument.documentPreferences.pageHeight;
	// Set the zero point to the center of the page.
	myDocument.zeroPoint = [myPageWidth/2, myPageHeight/2];
}
function mySnippet(){
	var myArray = new Array;
	// You've probably noticed that drawing regular polygons by specifying their
	// geometric bounds often produces polygons that are squashed or stretched.
	// The following example shows how to draw a regular polygon from its center point.
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	// <fragment>
	// Draw a regular polygon around (0,0).
	// The following parameters set the size and shape of the polygon.
	var myCenterPoint = [0,0];
	var myDiameter = 144;
	var myNumberOfPoints = 7;
	var myStarInset = 40;
	// myStartingPoint ensures that the top of the star is at 90 degrees vertically from the origin.
	var myStartingPoint = 270*(Math.PI/180);
	// Create a new polygon with the number of points and star inset that you want.
	// Save the current polygon preference.
	var myX, myY, myAngle;
	var myRadius = myDiameter/2;
	if(myStarInset == 100){
		myStarInset = 1;
	}
	else{
		myNumberOfPoints = myNumberOfPoints * 2;
		myStarInset = myStarInset * .01;
	}
	var myAngleIncrement = (360/myNumberOfPoints)*(Math.PI/180);
	var myInsideRadius = myRadius * myStarInset;
	//Create an array to hold the path points.
	var myPathPoints = new Array;
	//Fill in the array with path point locations.
	for (var myPointCounter = 0; myPointCounter < myNumberOfPoints;myPointCounter ++){
		myAngle = myAngleIncrement*myPointCounter;
		if ((myStarInset == 1)||(myIsEven(myPointCounter)==true)){
			myX = myCenterPoint[0] + myRadius * Math.cos(myAngle);
			myY = myCenterPoint[1] + myRadius * Math.sin(myAngle);
		}
		else{
			myX = myCenterPoint[0] + myInsideRadius * Math.cos(myAngle);
			myY = myCenterPoint[1] + myInsideRadius * Math.sin(myAngle);
		}
		myPathPoints.push([myX, myY]);
	}
	//Create a new polygon.
	var myPolygon = myPage.polygons.add();
	//Set the entire path of the polygon to the array we've created.
	myPolygon.paths.item(0).entirePath = myPathPoints;
	// </fragment>
}
function myTeardown(){
}
// This function returns true if myNumber is even, false if it is not.
function myIsEven(myNumber){
	myResult = (myNumber%2);
	if(myResult == 0){
		myResult = true;
	}
	else{
		myResult = false;
	}
	return myResult;
}