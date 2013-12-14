//ChangeCoordinates.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the changeCoordinates method.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySnippet(){
	//<fragment>
	var myPage = app.documents.item(0).pages.item(0)
	var myPolygon = myDrawPolygon(myPage, [0,0], 12, 72, true, .5);
	//</fragment>
}
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myDocument.zeroPoint = [144,144];
}
function myTeardown(){
}
//<fragment>
//General purpose routine for drawing regular polygons from their center point.
function myDrawPolygon(myParent, myCenterPoint, myNumberOfPoints, myRadius, myStarPolygon, myStarInset){
	var myTransformedPoint;
	var myPathPoints = new Array;
	var myPoint = [0,0];
	if(myStarPolygon == true){
		myNumberOfPoints = myNumberOfPoints * 2;
	}
	var myInnerRadius = myRadius * myStarInset;
	var myAngle = 360/myNumberOfPoints;
	var myRotateMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:myAngle});
	var myOuterTranslateMatrix = app.transformationMatrices.add({horizontalTranslation:myRadius});
	var myInnerTranslateMatrix = app.transformationMatrices.add({horizontalTranslation:myInnerRadius});
	for (var myPointCounter = 0; myPointCounter < myNumberOfPoints;myPointCounter ++){
		//Translate the point to the inner/outer radius.
		if ((myStarInset == 1)||(myIsEven(myPointCounter)==true)){
			myTransformedPoint = myOuterTranslateMatrix.changeCoordinates(myPoint);
		}
		else{
			myTransformedPoint = myInnerTranslateMatrix.changeCoordinates(myPoint);
		}
		myTransformedPoint = myRotateMatrix.changeCoordinates(myTransformedPoint);
		myPathPoints.push(myTransformedPoint);
		myRotateMatrix = myRotateMatrix.rotateMatrix(myAngle);
	}
	//Create a new polygon.
	var myPolygon = myParent.polygons.add();
	//Set the entire path of the polygon to the array we've created.
	myPolygon.paths.item(0).entirePath = myPathPoints;
	//If the center point is somewhere other than [0,0],
	//translate the polygon to the center point.
	if((myCenterPoint[0] != 0)||((myCenterPoint[1] != 0))){
		var myTranslateMatrix = app.transformationMatrices.add({horizontalTranslation:myCenterPoint[0],verticalTranslation:myCenterPoint[1]});
		myPolygon.transform(CoordinateSpaces.pasteboardCoordinates,
		AnchorPoint.centerAnchor, myTranslateMatrix);
	}
}
//This function returns true if myNumber is even, false if it is not.
function myIsEven(myNumber){
	var myResult = (myNumber%2)?false:true;
	return myResult;
}
//</fragment>