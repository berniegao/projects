//ReplaceText.jsx
//An InDesign CS6 JavaScript
//
//Creates a text frame in an example document,
//enters text in the text frame, and then replaces
//the text in the second paragraph.
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
	var myTextFrame = myPage.textFrames.add({geometricBounds:[72, 72, 288, 288], contents:"Paragraph 1.\rParagraph 2.\rParagraph 3.\r"});
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.item(0);
	//Replace the text in the second paragraph without replacing
	//the return character at the end of the paragraph. To do this,
	//we'll use the ItemByRange method.
	var myStartCharacter = myTextFrame.parentStory.paragraphs.item(1).characters.item(0);
	var myEndCharacter = myTextFrame.parentStory.paragraphs.item(1).characters.item(-2);
	myTextFrame.texts.itemByRange(myStartCharacter, myEndCharacter).contents = "This text replaces the text in paragraph 2."
	//</fragment>
}
function myTeardown(){
}

