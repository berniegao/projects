//ReplaceWord.jsx
//An InDesign CS6 JavaScript
//
//Creates a text frame in an example document,
//enters text in the text frame, and then replaces
//a word in the frame with a different phrase.
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
	var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.add({geometricBounds:[72, 72, 288, 288], contents:"This is some example text."});
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myTextFrame = myDocument.pages.item(0).textFrames.item(0);
	//Replace the third word with the phrase "a little bit of".
	myTextFrame.parentStory.words.item(2).contents = "a little bit of";
	//</fragment>
}
function myTeardown(){
}

