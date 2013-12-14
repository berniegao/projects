//DrawRegularPolygon_Slow.jsx
//An InDesign CS6 JavaScript
//
//Shows how to draw a regular polygon around a specific location
//by specifying the position of individual path points.
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
	var myPageWidth = myDocument.documentPreferences.pageWidth;
	var myPageHeight = myDocument.documentPreferences.pageHeight;
	//Set the zero point to the center of the page.
	myDocument.zeroPoint = [myPageWidth/2, myPageHeight/2];
}
function mySnippet(){
	var myX, myY, myAngle;
	//You've probably noticed that drawing regular polygons by specifying their
	//geometric bounds often produces polygons that are squashed or stretched.
	//The following example shows how to draw a regular polygon from its center point.
	var myDocument = app.documents.item(0);
	//<fragment>
	//Draw a regular polygon around [0,0].
	//The following parameters set the size and shape of the polygon.
	var myCenterPoint = [0,0];
	var myRadius = 72;
	var myNumberOfPoints = 7;
	var myStarInset = 40;
	//myStartingPoint ensures that the top of the star is at 90 degrees vertically from the origin.
	var myStartingPoint = 270*(Math.PI/180);	
	//Create a new polygon with the number of points and star inset that you want.
	//Save the current polygon preference.
	var myOldNumberOfSides = app.polygonPreferences.numberOfSides;
	if(myStarInset != 100){
		var myOldStarInset = app.polygonPreferences.insetPercentage;
		app.polygonPreferences.insetPercentage = myStarInset;
	}
	app.polygonPreferences.numberOfSides = myNumberOfPoints;
	var myPolygon = myDocument.pages.item(0).polygons.add();
	//Restore the old polygon preference.
	app.polygonPreferences.numberOfSides = myOldNumberOfSides;
	if(myStarInset != 100){
		app.polygonPreferences.insetPercentage = myOldStarInset;
	}
	if(myStarInset == 100){
		myStarInset = 1;
	}
	else{
		myNumberOfPoints = myNumberOfPoints * 2;
		myStarInset = myStarInset * .01;
		var myInsideRadius = myRadius * myStarInset;
	}
	var myAngleIncrement = (360/myNumberOfPoints)*(Math.PI/180);
	//Now we have a polygon with the correct number of points.
	//Move the points on the first path of the polygon into the correct locations.
	for (var myPointCounter = 0; myPointCounter < myNumberOfPoints;myPointCounter ++){
		myPoint = myPolygon.paths.item(0).pathPoints.item(myPointCounter);
		myAngle = myStartingPoint + (myAngleIncrement*myPointCounter);
		if ((myStarInset == 1)||(myIsEven(myPointCounter)==true)){
			myX = myCenterPoint[0] + myRadius * Math.cos(myAngle);
			myY = myCenterPoint[1] + myRadius * Math.sin(myAngle);
		}
		else{
			myX = myCenterPoint[0] + myInsideRadius * Math.cos(myAngle);
			myY = myCenterPoint[1] + myInsideRadius * Math.sin(myAngle);
		}
		//Move the anchor point to the calculated location.
		myPoint.anchor = [myX, myY];
	}
	//</fragment>
}
function myTeardown(){
}
//This function returns true if myNumber is even, false if it is not.
function myIsEven(myNumber){
	var myResult = (myNumber%2)?false:true;
	return myResult;
}