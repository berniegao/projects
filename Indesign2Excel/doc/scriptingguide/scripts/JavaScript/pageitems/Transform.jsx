//Transform.jsx
//An InDesign CS6 JavaScript
//
//A few "helper" functions for working with transformations.
main();
function main(){
	mySetup();
	mySnippet();
}
function mySnippet(){
	//<fragment>
	var myTextFrame = app.documents.item(0).pages.item(0).textFrames.item(0);
	myTextFrame.recompose();
	alert("The page contains an example text frame.\r\rWatch as we apply a series of transformations.\r\rYou  might have to drag the alert out\rof the way to see the effect of the transformation.");
	myRotate(myTextFrame, AnchorPoint.centerAnchor, 45, false);
	alert("Rotated 45 degrees around center anchor.");
	//Undo the transformation.
	app.documents.item(0).undo();
	myScale(myTextFrame, AnchorPoint.centerAnchor, .5, .5, false);
	alert("Scaled by 50 percent around center anchor.");
	//Undo the transformation.
	app.documents.item(0).undo();
	myTranslate(myTextFrame, AnchorPoint.centerAnchor, 72, 72);
	alert("Moved by 72 points in both directions.");
	//Undo the transformation.
	app.documents.item(0).undo();
	myShear(myTextFrame, AnchorPoint.centerAnchor, 15, false);
	alert("Sheared by 15 degrees around center anchor.");
	//Undo the transformation.
	app.documents.item(0).undo();
	myRotate(myTextFrame, [[92, 92], AnchorPoint.topLeftAnchor], 45, true);
	alert("Rotated 45 degrees around ruler coordinate [92, 92].");
	//Undo the transformation.
	app.documents.item(0).undo();
	myScale(myTextFrame,  [[92, 92], AnchorPoint.topLeftAnchor], 2, 2,true);
	alert("Scaled by 200 percent around  ruler coordinate [92, 92].");
	//Undo the transformation.
	app.documents.item(0).undo();
	//</fragment>
}
function mySetup(){
	var myDocument = app.documents.add();
	app.transformPreferences.whenScaling = WhenScalingOptions.adjustScalingPercentage;
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.add({geometricBounds:[72, 72, 288, 288], contents:TextFrameContents.placeholderText})
}
//<fragment>
function myRotate(myObject, myAnchor, myAngle, myUseRulerCoordinates){
	var myTransformationMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:myAngle});
	myObject.transform(CoordinateSpaces.pasteboardCoordinates, myAnchor, myTransformationMatrix, undefined, myUseRulerCoordinates);
}
function myScale(myObject, myAnchor, myXScale, myYScale, myUseRulerCoordinates){
	var myTransformationMatrix =  app.transformationMatrices.add({horizontalScaleFactor:myXScale, verticalScaleFactor:myYScale});
	myObject.transform(CoordinateSpaces.pasteboardCoordinates, myAnchor, myTransformationMatrix, undefined, myUseRulerCoordinates);
}
function myShear(myObject, myAnchor, myShearAngle, myUseRulerCoordinates){
	var myTransformationMatrix =  app.transformationMatrices.add({clockwiseShearAngle:myShearAngle});
	myObject.transform(CoordinateSpaces.pasteboardCoordinates, myAnchor, myTransformationMatrix, undefined, myUseRulerCoordinates);
}
function myTranslate(myObject, myAnchor, myXTranslate, myYTranslate){
	var myTransformationMatrix =  app.transformationMatrices.add({horizontalTranslation:myXTranslate, verticalTranslation:myYTranslate});
	myObject.transform(CoordinateSpaces.pasteboardCoordinates, myAnchor, myTransformationMatrix);	
}
//</fragment>