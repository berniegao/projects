//SimpleAnimation.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create a very simple animation.
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
	//Given a document "myDocument" and a page "myPage" and a color "myColorA"...
	//Add a page items to animate.
	var myPolygon = myPage.polygons.add({fillColor:myColorA, strokeColor:myDocument.swatches.item("None")});
	myPolygon.paths.item(0).entirePath = [[72, 72], [72, 144], [144, 108]];
	//Create a motion path.
	var myMotionPathPoints = [[[[108,108],[108,108],[108,108]],[[516, 108],[516, 108],[516, 108]]],true];
	//Set animation preferences for the polygon. We havent' set a dynamic trigger
	//for the animation, so the polygon's animation will be triggered by 
	//DynamicTriggerEvents.onPageLoad (the default).
	myPolygon.animationSettings.duration = 2;
	myPolygon.animationSettings.motionPathPoints = myMotionPathPoints;
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