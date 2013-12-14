//NestedStyles.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create a paragraph style containing a nested style.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	var myPage = myDocument.pages.item(0);
	//Create a color for use by one of the paragraph styles we'll create.
	try{
		myColor = myDocument.colors.item("Red");
		//If the color does not exist, trying to get its name will generate an error.
		myName = myColor.name;
	}
	catch (myError){
		//The color style did not exist, so create it.
		myColor = myDocument.colors.add({name:"Red", model:ColorModel.process, colorValue:[0, 100, 100, 0]});
	}
	//Create a text frame on the active page.
	var myTextFrame = myPage.textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
	//Fill the text frame with placeholder text.
	myTextFrame.contents = TextFrameContents.placeholderText;
	//Create a character style named "myCharacterStyle" if 
	//no style by that name already exists.
	try{
		myCharacterStyle = myDocument.characterStyles.item("myCharacterStyle");
		//If the style does not exist, trying to get its name will generate an error.
		myName = myCharacterStyle.name;
	}
	catch (myError){
		//The style did not exist, so create it.
		myCharacterStyle = myDocument.characterStyles.add({name:"myCharacterStyle"});
	}
	//At this point, the variable myCharacterStyle contains a reference to a character 
	//style object, which you can now use to specify formatting.
	myCharacterStyle.fillColor = myColor;
	//Create a paragraph style named "myParagraphStyle" if 
	//no style by that name already exists.
	try{
		myParagraphStyle = myDocument.paragraphStyles.item("myParagraphStyle");
		//If the paragraph style does not exist, trying to get its name will generate an error.
		myName = myParagraphStyle.name;
	}
	catch (myError){
		//The paragraph style did not exist, so create it.
		myParagraphStyle = myDocument.paragraphStyles.add({name:"myParagraphStyle"});
	}
	//At this point, the variable myParagraphStyle contains a reference to a paragraph 
	//style object, which you can now use to specify formatting.
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.item(0);
    var myParagraphStyle = myDocument.paragraphStyles.item("myParagraphStyle");
	var myNestedStyle = myParagraphStyle.nestedStyles.add({appliedCharacterStyle:myCharacterStyle, delimiter:".", inclusive:true, repetition:1});
	var myStartCharacter = myTextFrame.parentStory.characters.item(0);
	var myEndCharacter = myTextFrame.parentStory.characters.item(-1);
	//Use the itemByRange method to apply the paragraph to all of the text in the story.
	//(Note that the story object does not have the applyParagraphStyle method.)
	myTextFrame.parentStory.texts.itemByRange(myStartCharacter, myEndCharacter).applyParagraphStyle(myParagraphStyle, true);
	//</fragment>
}
function myTeardown(){
}
function myGetBounds(myDocument, myPage){
	var myPageWidth = myDocument.documentPreferences.pageWidth;
	var myPageHeight = myDocument.documentPreferences.pageHeight
	if(myPage.side == PageSideOptions.leftHand){
		var myX2 = myPage.marginPreferences.left;
		var myX1 = myPage.marginPreferences.right;
	}
	else{
		var myX1 = myPage.marginPreferences.left;
		var myX2 = myPage.marginPreferences.right;
	}
	var myY1 = myPage.marginPreferences.top;
	var myX2 = myPageWidth - myX2;
	var myY2 = myPageHeight - myPage.marginPreferences.bottom;
	return [myY1, myX1, myY2, myX2];
}