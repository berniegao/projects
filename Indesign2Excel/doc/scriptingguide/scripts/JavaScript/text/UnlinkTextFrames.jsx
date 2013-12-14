//UnlinkTextFrames.jsx
//An InDesign CS6 JavaScript
//
//Shows how to unlink text frames.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
	var myPage = myDocument.pages.item(0);
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
	//Create a text frame on the active page.
	var myTextFrameA = myPage.textFrames.add({geometricBounds:[72, 72, 144, 144]});
	//Create another text frame on the active page.
	var myTextFrameB = myPage.textFrames.add({geometricBounds:[228, 72, 300, 144]});
	//Link TextFrameA to TextFrameB using the nextTextFrame property.
	myTextFrameA.nextTextFrame = myTextFrameB;
	//Fill the two frames with placeholder text.
	myTextFrameA.contents = TextFrameContents.placeholderText;
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	var myTextFrameA =  myPage.textFrames.item(1);
	//Given a text frame "myTextFrameA" that is linked to another text frame...
	//Unlink the two text frames.
	myTextFrameA.nextTextFrame = NothingEnum.nothing;
	//</fragment>
}
function myTeardown(){
}

