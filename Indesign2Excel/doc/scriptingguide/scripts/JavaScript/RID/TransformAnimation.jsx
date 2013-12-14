//TransformAnimation.jsx
//An InDesign CS6 JavaScript
//
//Shows how to apply multiple transformations to an animated object.
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
	myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	var myColorA = myAddColor(myDocument, "DGC1_446a", ColorModel.process, [0, 100, 0, 50]);
	var myColorB = myAddColor(myDocument, "DGC1_446b", ColorModel.process, [100, 0, 50, 0]);
	var myColorC = myAddColor(myDocument, "DGC1_446c", ColorModel.process, [50, 30, 30, 0]);
	
	var myOvalA = myPage.ovals.add({fillColor:myColorA, strokeColor:myDocument.swatches.item("None"), geometricBounds:[66, 66, 78, 78]});
	var myOvalB = myPage.ovals.add({fillColor:myColorB, strokeColor:myDocument.swatches.item("None"), geometricBounds:[66, 66, 78, 78]});
	var myOvalC = myPage.ovals.add({fillColor:myColorC, strokeColor:myDocument.swatches.item("None"), geometricBounds:[66, 66, 78, 78]});
	//<fragment>
	//Given a page containing ovals "myOvalA," "myOvalB," and "myOvalC"... 
	//The motion path is constructed relative to the center of the object, and key frames
	//are based on the duration of the animation divided by the number of frames per second
	//(usually 24). The following array sets key frames at the start, midpoint, and end
	//of a path.
	var myMotionPath = [[0,[[0,0], [0,0], [0,0]]], [23,[[234,0], [234,0], [234,0]]], [47,[[468,0], [468,0], [468,0]]]];
	myOvalA.animationSettings.duration = 2;
	myOvalA.animationSettings.motionPath = myMotionPath;
	//The transformation changes at each key frame.
	//scaleXArray in the form [[keyframe, scale_percentage], [keyframe, scalePercentage], ...]
	myOvalA.animationSettings.scaleXArray = [[0, 100], [23,200], [47, 100]];
	//scaleYArray in the form [[keyframe, scale_percentage], [keyframe, scalePercentage], ...]
	myOvalA.animationSettings.scaleYArray = [[0, 100], [23,200], [47, 100]];
	//opacityArray in the form [[keyframe, opacity], [keyframe, opacity],...];
	myOvalA.animationSettings.opacityArray = [[0, 100], [23, 20], [47, 100]];
	myOvalA.animationSettings.playsLoop = true;
	myOvalB.animationSettings.duration = 2;
	myOvalB.animationSettings.motionPath = myMotionPath;
	myOvalB.animationSettings.scaleXArray = [[0, 200], [23,300], [47, 50]];
	myOvalB.animationSettings.scaleYArray = [[0, 200], [23,300], [47, 50]];
	myOvalB.animationSettings.opacityArray = [[0, 10], [23, 80], [47, 60]];
	myOvalB.animationSettings.playsLoop = true;
	myOvalC.animationSettings.duration = 2;
	myOvalC.animationSettings.motionPath = myMotionPath;
	myOvalC.animationSettings.scaleXArray = [[0, 50], [23,200], [47, 400]];
	myOvalC.animationSettings.scaleYArray = [[0, 50], [23,200], [47, 400]];
	myOvalC.animationSettings.opacityArray = [[0, 100], [23, 40], [47, 80]];
	myOvalC.animationSettings.playsLoop = true;
	//</fragment>
}
function myTeardown(){
}
function myAddColor(myDocument, myColorName, myColorModel, myColorValue){
	var myColor;
	if(myDocument.colors.item(myColorName).isValid == false){
		myColor = myDocument.colors.add({name:myColorName});
	}
	else{
		myColor = myDocument.colors.item(myColorName);
	}
	myColor.properties = {model:myColorModel, colorValue:myColorValue};
	return myColor;
}