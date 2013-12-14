//MovieControl.jsx
//An InDesign CS6 JavaScript
//
//Shows how to make a button to control movie playback.
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
	myMakeColor("Gray", ColorSpace.RGB, ColorModel.process, [200, 200, 200]);
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	//<fragment>
	//Given a page "myPage" in a document "myDocument," 
	//containing the colors "Gray" and "Red"...
	var myFrame = myPage.rectangles.add({geometricBounds:[72, 72, 288, 288]});
	//Import a movie file (you'll have to provide a valid file path on your system);
	myFrame.place(File("/c/movie.avi"));
	//Create the movie "Start" button.
	var myPlayButton = myPage.buttons.add({geometricBounds:[294,186,354,282], name:"PlayMovieButton"});
	var myRightArrow = myPlayButton.states.item(0).polygons.add({fillColor:myDocument.colors.item("Gray")});
	myRightArrow.paths.item(0).entirePath = [[186, 294],[186,354],[282, 324]];
	//Add the Rollover state.
	var myRolloverState = myPlayButton.states.add();
	//Add a shadow to the polygon in the Rollover state.
	var myRolloverArrow = myRolloverState.polygons.add({fillColor:myDocument.colors.item("Gray")});
	myRolloverArrow.paths.item(0).entirePath = [[186, 294],[186,354],[282, 324]];
	var myFillTransparencySettings = myRolloverArrow.fillTransparencySettings;
	myFillTransparencySettings.dropShadowSettings.mode = ShadowMode.drop;
	myFillTransparencySettings.dropShadowSettings.angle = 90;
	myFillTransparencySettings.dropShadowSettings.xOffset = 0;
	myFillTransparencySettings.dropShadowSettings.yOffset = 0;
	myFillTransparencySettings.dropShadowSettings.size = 6;
	//Add a shadow to the polygon in the Click state.
	var myClickState = myPlayButton.states.add();
	var myClickArrow = myClickState.polygons.add({fillColor:myDocument.colors.item("Red")});
	myClickArrow.paths.item(0).entirePath = [[186, 294],[186,354],[282, 324]];
	//Set the behavior for the button.
	var myMovieStartBehavior = myPlayButton.movieBehaviors.add({movieItem:myFrame.movies.item(0), behaviorEvent:BehaviorEvents.mouseUp, operation:MoviePlayOperations.play});
	//Create the movie "Stop" button.
	var myStopButton = myPage.buttons.add({geometricBounds:[294,78,354,174], name:"StopMovieButton"});
	var myNormalRectangle = myStopButton.states.item(0).rectangles.add({geometricBounds:[294,78,354,174], fillColor:myDocument.colors.item("Gray")});
	myRolloverState = myStopButton.states.add();
	var myRolloverRectangle = myRolloverState.rectangles.add({geometricBounds:[294,78,354,174], fillColor:myDocument.colors.item("Gray")});
	var myFillTransparencySettings = myRolloverRectangle.fillTransparencySettings;
	myFillTransparencySettings.dropShadowSettings.mode = ShadowMode.drop;
	myFillTransparencySettings.dropShadowSettings.angle = 90;
	myFillTransparencySettings.dropShadowSettings.xOffset = 0;
	myFillTransparencySettings.dropShadowSettings.yOffset = 0;
	myFillTransparencySettings.dropShadowSettings.size = 6;
	myClickState = myStopButton.states.add();
	var myClickRectangle = myClickState.rectangles.add({geometricBounds:[294,78,354,174], fillColor:myDocument.colors.item("Red")});
	var myMovieStopBehavior = myStopButton.movieBehaviors.add({movieItem:myFrame.movies.item(0), behaviorEvent:BehaviorEvents.mouseUp, operation:MoviePlayOperations.stop});
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
