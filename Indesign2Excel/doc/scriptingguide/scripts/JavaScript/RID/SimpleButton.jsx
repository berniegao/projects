//SimpleButton.jsx
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
	//Given a page "myPage" and a document containing the color "Red"...
	//Make a button by converting a page item.
	var myRightArrow = myPage.polygons.add({fillColor:myDocument.colors.item("Red"), name:"GoToNextPageButton"});
	myRightArrow.paths.item(0).entirePath = [[72, 72],[144,108],[72, 144]];
	var myButton = myPage.buttons.add({geometricBounds:[72, 72, 144, 144]});
	myButton.states.item(0).addItemsToState(myRightArrow);
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
