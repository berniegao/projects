//LinkTextFrames.jsx
//An InDesign CS6 JavaScript
//
//Shows how to link text frames.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	var myPage = myDocument.pages.item(0);
	//Set the measurement units to points.
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
	//Create a text frame on the active page.
	var myTextFrameA = myPage.textFrames.add({geometricBounds:[72, 72, 144, 144]});
	//Create another text frame on the active page.
	var myTextFrameB = myPage.textFrames.add({geometricBounds:[228, 72, 300, 144]});
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	var myTextFrameA = myPage.textFrames.item(1);
	var myTextFrameB = myPage.textFrames.item(0);
	//Add a page.
	var myNewPage = myDocument.pages.add();
	//Create another text frame on the new page.
	var myTextFrameC = myNewPage.textFrames.add({geometricBounds:[72, 72, 144, 144]})
	//Link TextFrameA to TextFrameB using the nextTextFrame property.
	myTextFrameA.nextTextFrame = myTextFrameB;
	//Link TextFrameC to TextFrameB using the previousTextFrame property.
	myTextFrameC.previousTextFrame = myTextFrameB;
	//Fill the text frames with placeholder text.
	myTextFrameA.contents = TextFrameContents.placeholderText;
	//</fragment>
}
function myTeardown(){
}

