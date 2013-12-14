//FunWithTransformations.jsx
//An InDesign CS6 JavaScript
//
//Having a little fun with matrix transformations.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySnippet(){
	//<fragment>
	//Given a document with a polygon on page 1...
	var myPolygon = app.documents.item(0).pages.item(0).polygons.item(0);
	var myEntirePath = myPolygon.paths.item(0).entirePath;
	//Fill in the left and right direction points with the locations of the anchor points.
	myEntirePath = myAddDirectionPoints(myEntirePath);
	var myClockwiseMatrix = app.transformationMatrices.add({horizontalScaleFactor:.75, verticalScaleFactor:.75, counterclockwiseRotationAngle:15});
	var myCounterClockwiseMatrix = app.transformationMatrices.add({horizontalScaleFactor:.75, verticalScaleFactor:.75, counterclockwiseRotationAngle:-15});
	for(var myCounter = 0; myCounter < myEntirePath.length; myCounter++){
		myPoint = myEntirePath[myCounter];
		myPoint[0] = myClockwiseMatrix.changeCoordinates(myPoint[0]);
		myPoint[2] = myCounterClockwiseMatrix.changeCoordinates(myPoint[2]);
		myEntirePath[myCounter] = myPoint;
	}
	myPolygon.paths.item(0).entirePath = myEntirePath;
	myPolygon = myPolygon.duplicate();
	myEntirePath = myPolygon.paths.item(0).entirePath;
	myClockwiseMatrix = app.transformationMatrices.add({horizontalScaleFactor:1.5, verticalScaleFactor:1.5, counterclockwiseRotationAngle:35});
	myCounterClockwiseMatrix = app.transformationMatrices.add({horizontalScaleFactor:1.5, verticalScaleFactor:1.5, counterclockwiseRotationAngle:-35});
	for(myCounter = 0; myCounter < myEntirePath.length; myCounter++){
		myPoint = myEntirePath[myCounter];
		myPoint[0] = myClockwiseMatrix.changeCoordinates(myPoint[0]);
		myPoint[2] = myCounterClockwiseMatrix.changeCoordinates(myPoint[2]);
		myEntirePath[myCounter] = myPoint;
	}
	myPolygon.paths.item(0).entirePath = myEntirePath;
	myPolygon = myPolygon.duplicate();
	myEntirePath = myPolygon.paths.item(0).entirePath;
	myClockwiseMatrix = app.transformationMatrices.add({horizontalScaleFactor:.75, verticalScaleFactor:.75, counterclockwiseRotationAngle:-35});
	myCounterClockwiseMatrix = app.transformationMatrices.add({horizontalScaleFactor:.75, verticalScaleFactor:.75, counterclockwiseRotationAngle:35});
	for(myCounter = 0; myCounter < myEntirePath.length; myCounter++){
		myPoint = myEntirePath[myCounter];
		myPoint[0] = myClockwiseMatrix.changeCoordinates(myPoint[0]);
		myPoint[2] = myCounterClockwiseMatrix.changeCoordinates(myPoint[2]);
		myEntirePath[myCounter] = myPoint;
	}
	myPolygon.paths.item(0).entirePath = myEntirePath;
	myPolygon = myPolygon.duplicate();
	myEntirePath = myPolygon.paths.item(0).entirePath;
	myClockwiseMatrix = app.transformationMatrices.add({horizontalScaleFactor:.5, verticalScaleFactor:.5, counterclockwiseRotationAngle:-45});
	myCounterClockwiseMatrix = app.transformationMatrices.add({horizontalScaleFactor:.5, verticalScaleFactor:.5, counterclockwiseRotationAngle:45});
	for(myCounter = 0; myCounter < myEntirePath.length; myCounter++){
		myPoint = myEntirePath[myCounter];
		myPoint[0] = myClockwiseMatrix.changeCoordinates(myPoint[0]);
		myPoint[2] = myCounterClockwiseMatrix.changeCoordinates(myPoint[2]);
		myEntirePath[myCounter] = myPoint;
	}
	myPolygon.paths.item(0).entirePath = myEntirePath;
	//</fragment>
}
//<fragment>
function myAddDirectionPoints(myPath){
	var myNewPath = new Array;
	for(var myCounter = 0; myCounter < myPath.length; myCounter++){
		myPointArray = new Array;
		for(myPointCounter = 0; myPointCounter<3; myPointCounter++){
			myPointArray.push(myPath[myCounter]);
		}
		myNewPath.push(myPointArray);
	}
	return myNewPath;
}
//</fragment>
function myDrawPolygon(myPage, myCenterPoint, myNumberOfPoints, myDiameter, myStarInset){
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
	return myPolygon;
}
//This function returns true if myNumber is even, false if it is not.
function myIsEven(myNumber){
	var myResult = (myNumber%2)?false:true;
	return myResult;
}
function mySetup(){
	var myDocument = app.documents.add();
	app.transformPreferences.whenScaling = WhenScalingOptions.adjustScalingPercentage;
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myDocument.zeroPoint = [144,144];
	var myPage = myDocument.pages.item(0);
	var myPolygon = myDrawPolygon(myPage, [0,0], 12, 72, 56);
}
function Rotate(myObject, myAnchor, myAngle){
	var myTransformationMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:myAngle});
	myObject.transform(CoordinateSpaces.parentCoordinates, myAnchor, myTransformationMatrix);
}
function Scale(myObject, myAnchor, myXScale, myYScale){
	var myTransformationMatrix =  app.transformationMatrices.add({horizontalScaleFactor:myXScale, verticalScaleFactor:myYScale});
	myObject.transform(CoordinateSpaces.parentCoordinates, myAnchor, myTransformationMatrix);
}
function Shear(myObject, myAnchor, myShearAngle){
	var myTransformationMatrix =  app.transformationMatrices.add({clockwiseShearAngle:myShearAngle});
	myObject.transform(CoordinateSpaces.parentCoordinates, myAnchor, myTransformationMatrix);
}
function myTeardown(){
}
