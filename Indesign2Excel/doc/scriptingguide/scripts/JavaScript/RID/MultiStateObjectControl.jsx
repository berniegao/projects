//MultiStateObjectControl.jsx
//An InDesign CS6 JavaScript
//
//Shows how to add a button to control a multi-state object (MSO).
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
	var myColorD = myAddColor(myDocument, "DGC1_446d", ColorModel.process, [70, 50, 0, 0]);
	//<fragment>
	//Given a document "myDocument" and a page "myPage" and
	//four colors "myColorA," "myColorB," "myColorC," and "myColorD"...
	var myMSO = myPage.multiStateObjects.add({name:"Spinner", geometricBounds:[72, 72, 144, 144]});
	//New multi-state objects contain two states when they're created. Add two more.
	myMSO.states.item(0).name = "Up";
	myMSO.states.item(1).name = "Right";
	//Add two more states.
	myMSO.states.add({name:"Down"});
	myMSO.states.add({name:"Left"});
	//Add page items to the states.
	var myPolygon = myMSO.states.item(0).polygons.add({fillColor:myColorA, strokeColor:myDocument.swatches.item("None")});
	myPolygon.paths.item(0).entirePath = [[72, 144], [144, 144], [108, 72]];
	myPolygon = myMSO.states.item(1).polygons.add({fillColor:myColorB, strokeColor:myDocument.swatches.item("None")});
	myPolygon.paths.item(0).entirePath = [[72, 72], [72, 144], [144, 108]];
	myPolygon = myMSO.states.item(2).polygons.add({fillColor:myColorC, strokeColor:myDocument.swatches.item("None")});
	myPolygon.paths.item(0).entirePath = [[72, 72], [108, 144], [144, 72]];
	myPolygon = myMSO.states.item(3).polygons.add({fillColor:myColorD, strokeColor:myDocument.swatches.item("None")});
	myPolygon.paths.item(0).entirePath = [[144, 72], [72, 108], [144, 144]];
	var myButton = myPage.buttons.add({geometricBounds:[72, 72, 144, 144]});
	myRolloverState = myButton.states.add();
	var myRolloverRectangle = myRolloverState.groups.item(0).rectangles.item(0);
	myRolloverRectangle.strokeColor = myColorD;
	myRolloverRectangle.strokeWeight = 1;
	var myStrokeTransparencySettings = myRolloverRectangle.strokeTransparencySettings;
	myStrokeTransparencySettings.dropShadowSettings.mode = ShadowMode.drop;
	myStrokeTransparencySettings.dropShadowSettings.angle = 90;
	myStrokeTransparencySettings.dropShadowSettings.xOffset = 0;
	myStrokeTransparencySettings.dropShadowSettings.yOffset = 0;
	myStrokeTransparencySettings.dropShadowSettings.size = 6;
	var myClickState = myButton.states.add();
	var myNextStateBehavior = myButton.gotoNextStateBehaviors.add({associatedMultiStateObject:myMSO, behaviorEvent:BehaviorEvents.mouseDown, enableBehavior:true, loopsToNextOrPrevious:true});	
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