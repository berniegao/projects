//AnimateRotation.jsx
//An InDesign CS6 JavaScript
//
//Shows how to rotate a page item as it is animated.
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
	//<fragment>
//Given a document "myDocument" and a page "myPage" and the color "myColorA"...
//Add a page items to animate.
var myPolygonA = myPage.polygons.add({fillColor:myColorA, strokeColor:myDocument.swatches.item("None")});
myPolygonA.paths.item(0).entirePath = [[72, 72], [72, 144], [144, 108]];
//Create a motion path.
var myMotionPathPoints = [[[[108,108],[108,108],[108,108]],[[516, 108],[516, 108],[516, 108]]],true];
//Set animation preferences for the polygon.
myPolygonA.animationSettings.duration = 2;
myPolygonA.animationSettings.motionPathPoints = myMotionPathPoints;
//Assuming 24 Frames Per Second (FPS)
//23 = 1 second, 47 = 2 seconds, 71 = 3 seconds, 95 = 4 seconds, 119 = 5 seconds, 143 = 6 seconds
//Since the duration of our animation is 2 seconds, the following line will
//make the polygon rotate 360 degrees from the start to the end
//of the animation.
myPolygonA.animationSettings.rotationArray = [[0, 0], [47, 360]];
var myTimingSettings = myPage.parent.timingSettings;
//Remove the default timing list.
myTimingSettings.timingLists.item(0).remove();
//Add a new timing list that triggers when the page is clicked.
var myTimingList = myTimingSettings.timingLists.add(DynamicTriggerEvents.onPageClick);
//Add the polygons to a single timing group.
var myTimingGroup = myTimingList.timingGroups.add(myPolygonA, 0);
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