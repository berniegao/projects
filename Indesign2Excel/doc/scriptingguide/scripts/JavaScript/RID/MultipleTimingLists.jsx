//MultipleTimingLists.jsx
//An InDesign CS6 JavaScript
//
//Shows how to work with multiple timing lists in an animation.
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
	var myPolygonA = myPage.polygons.add({fillColor:myColorA, strokeColor:myDocument.swatches.item("None")});
	myPolygonA.paths.item(0).entirePath = [[72, 72], [72, 144], [144, 108]];
	var myPolygonB = myPage.polygons.add({fillColor:myColorB, strokeColor:myDocument.swatches.item("None")});
	myPolygonB.paths.item(0).entirePath = [[72, 72], [72, 144], [144, 108]];
	var myPolygonC = myPage.polygons.add({fillColor:myColorC, strokeColor:myDocument.swatches.item("None")});
	myPolygonC.paths.item(0).entirePath = [[72, 72], [72, 144], [144, 108]];
	var myPolygonD = myPage.polygons.add({fillColor:myColorA, strokeColor:myDocument.swatches.item("None")});
	myPolygonD.paths.item(0).entirePath = [[72, 144], [72, 216], [144, 180]];
	var myPolygonE = myPage.polygons.add({fillColor:myColorB, strokeColor:myDocument.swatches.item("None")});
	myPolygonE.paths.item(0).entirePath = [[72, 144], [72, 216], [144, 180]]
	var myPolygonF = myPage.polygons.add({fillColor:myColorC, strokeColor:myDocument.swatches.item("None")});
	myPolygonF.paths.item(0).entirePath = [[72, 144], [72, 216], [144, 180]];
	//Create a motion path.
	var myMotionPathPointsA = [[[[108,108],[108,108],[108,108]],[[516, 108],[516, 108],[516, 108]]],true];
	var myMotionPathPointsB = [[[[108,180],[108,180],[108,180]],[[516, 180],[516, 180],[516, 180]]],true];
	//Set animation preferences for the polygons. 
	//DynamicTriggerEvents.onPageLoad (the default).
	myPolygonA.animationSettings.duration = 2;
	myPolygonA.animationSettings.motionPathPoints = myMotionPathPointsA;
	myPolygonB.animationSettings.duration = 2;
	myPolygonB.animationSettings.motionPathPoints = myMotionPathPointsA;
	myPolygonC.animationSettings.duration = 2;
	myPolygonC.animationSettings.motionPathPoints = myMotionPathPointsA;
	myPolygonD.animationSettings.duration = 2;
	myPolygonD.animationSettings.motionPathPoints = myMotionPathPointsB;
	myPolygonE.animationSettings.duration = 2;
	myPolygonE.animationSettings.motionPathPoints = myMotionPathPointsB;
	myPolygonF.animationSettings.duration = 2;
	myPolygonF.animationSettings.motionPathPoints = myMotionPathPointsB;
	//<fragment>
	//Given a document "myDocument" and a page "myPage" containg 6 polygons: 
	//"myPolygonA", "myPolygonB", "myPolygonC", "myPolygonD", "myPolygonE", "myPolygonF". 
	//Add a page items to animate.
	var myTimingSettings = myPage.parent.timingSettings;
	//At this point, all of the polygons have already been added as timing targets
	//of the default timing list. Change the delay of myPolygonB and myPolygonC,
	//which are the targets of the second and third timing groups (item(1) and item(2)).
	var myTimingListA = myTimingSettings.timingLists.item(0);
	var myTimingGroup = myTimingListA.timingGroups.item(1);
	myTimingGroup.timingTargets.item(0).delaySeconds = 2;
	myTimingGroup = myTimingListA.timingGroups.item(2);
	myTimingGroup.timingTargets.item(0).delaySeconds = 2;
	//Remove the last three timing groups in the timing list.
	//We have to do this, because we don't want these polygons to be
	//animated when the page loads.
	myTimingListA.timingGroups.item(-1).remove();
	myTimingListA.timingGroups.item(-1).remove();
	myTimingListA.timingGroups.item(-1).remove();	
	//Add a new timing list that triggers when the page is clicked.
	var myTimingListB = myTimingSettings.timingLists.add(DynamicTriggerEvents.onPageClick);
	var myTimingGroupB = myTimingListB.timingGroups.add(myPolygonD, 0);
	myTimingGroupB.timingTargets.add(myPolygonE, 2);
	myTimingGroupB.timingTargets.add(myPolygonF, 2);
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