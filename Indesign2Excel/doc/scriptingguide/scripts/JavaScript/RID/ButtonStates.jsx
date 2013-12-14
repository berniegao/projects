//ButtonStates.jsx
//An InDesign CS6 JavaScript
//
//Shows how to make a button.
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
	myMakeColor("Red", ColorSpace.RGB, ColorModel.process, [255, 0, 0]);
	myMakeColor("Blue", ColorSpace.RGB, ColorModel.process, [0, 0, 255]);
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	//<fragment>
	//Given a page "myPage" in a document "myDocument," containing the colors
	//"Blue" and "Red"...
	//Make a button "from scratch."
	var myButton = myPage.buttons.add({geometricBounds:[72, 72, 144, 144], name:"GoToNextPageButton"});
	var myRightArrow = myButton.states.item(0).polygons.add({fillColor:myDocument.colors.item("Red")});
	myRightArrow.paths.item(0).entirePath = [[72, 72],[144,108],[72, 144]];
	//Add the Rollover state.
	var myRolloverState = myButton.states.add();
	//Add a shadow to the polygon in the Rollover state.
	var myRolloverArrow = myRolloverState.polygons.add({fillColor:myDocument.colors.item("Red")});
	myRolloverArrow.paths.item(0).entirePath = [[72, 72],[144,108],[72, 144]];
	var myFillTransparencySettings = myRolloverArrow.fillTransparencySettings;
	myFillTransparencySettings.dropShadowSettings.mode = ShadowMode.drop;
	myFillTransparencySettings.dropShadowSettings.angle = 90;
	myFillTransparencySettings.dropShadowSettings.xOffset = 0;
	myFillTransparencySettings.dropShadowSettings.yOffset = 0;
	myFillTransparencySettings.dropShadowSettings.size = 6;
	//Add a shadow to the polygon in the Click state.
	var myClickState = myButton.states.add();
	var myClickArrow = myClickState.polygons.add({fillColor:myDocument.colors.item("Blue")});
	myClickArrow.paths.item(0).entirePath = [[72, 72],[144,108],[72, 144]];
	//Set the behavior for the button.
	var myGoToNextPageBehavior = myButton.gotoNextPageBehaviors.add({behaviorEvent:BehaviorEvents.mouseUp});
	//</fragment>
}
function myTeardown(){
}
function myMakeColor(myColorName, myColorSpace, myColorModel, myColorValue){
	var myColor;
	var myDocument = app.documents.item(0);
	myColor = myDocument.colors.item(myColorName);
	if(myColor.isValid == false){
		myColor = myDocument.colors.add({name:myColorName});
	}
	myColor.properties = {space:myColorSpace, model:myColorModel, colorValue:myColorValue};
	return myColor;
}
