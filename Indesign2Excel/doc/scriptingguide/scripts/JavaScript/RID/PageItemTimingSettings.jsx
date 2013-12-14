//MultipleTimingLists.jsx
//An InDesign CS6 JavaScript
//
//Shows how to work with the timing settings of a page item.
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
	var myPolygonA = myPage.polygons.add({fillColor:myColorA, strokeColor:myDocument.swatches.item("None")});
	myPolygonA.paths.item(0).entirePath = [[72, 72], [72, 144], [144, 108]];
	//Create a motion path.
	var myMotionPathPointsA = [[[[108,108],[108,108],[108,108]],[[516, 108],[516, 108],[516, 108]]],true];
	//<fragment>
	//Given a document "myDocument" and a page "myPage" containg a polygon "myPolygonA"...
	//Remove the default timing list in the timing settings for the spread.
	//Set animation preferences for the polygon. 
	myPolygonA.animationSettings.duration = 2;
	myPolygonA.animationSettings.motionPathPoints = myMotionPathPointsA;	
	myPage.parent.timingSettings.timingLists.item(0).remove();
	var myTimingSettings = myPolygonA.timingSettings;
	var myTimingList = myTimingSettings.timingLists.add(DynamicTriggerEvents.onClick);
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