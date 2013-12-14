//CopyUnformattedText.jsx
//An InDesign CS6 JavaScript
//
//Shows how to remove formatting from text as you move it to other locations in a document.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
    //Set the measurement units to points.
    myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
    myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
    myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	//Create a text frame on the active page.
	var myTextFrameA = myPage.textFrames.add({geometricBounds:[72, 72, 144, 288]});
	myTextFrameA.contents = "This is a formatted string.";
	myTextFrameA.parentStory.texts.item(0).fontStyle = "Bold";
	//Create another text frame on the active page.
	var myTextFrameB = myPage.textFrames.add({geometricBounds:[228, 72, 300, 288]});
	myTextFrameB.contents = "This is the destination text frame. Text pasted here will retain its formatting.";
	myTextFrameB.parentStory.texts.item(0).fontStyle = "Italic";
	//Copy from one frame to another using a simple copy.
	app.select(myTextFrameA.texts.item(0));
	app.copy();
	app.select(myTextFrameB.parentStory.insertionPoints.item(-1));
	app.paste();
	//Create another text frame on the active page.
	var myTextFrameC = myPage.textFrames.add({geometricBounds:[312, 72, 444, 288]});
	myTextFrameC.contents = "Text copied here will take on the formatting of the existing text.";
	myTextFrameC.parentStory.texts.item(0).fontStyle = "Italic";
	//Copy the unformatted string from text frame A to the end of text frame C (note
	//that this doesn't really copy the text; it replicates the text string from one
	//text frame in another text frame):
	myTextFrameC.parentStory.insertionPoints.item(-1).contents = myTextFrameA.parentStory.texts.item(0).contents;
	//</fragment>
}
function myTeardown(){
}