//SpecialCharacters.jsx
//An InDesign CS6 JavaScript
//
//Shows how to enter special characters in text.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

function mySetup(){
	var myDocument = app.documents.add();
}

function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	//Create a text frame on the current page.
	var myTextFrame = myDocument.pages.item(0).textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myDocument.pages.item(0));
	//Entering special characters directly.
	myTextFrame.contents = "Registered trademark: ®\rCopyright: ©\rTrademark: ?\r";
	//Entering special characters by their Unicode glyph ID value:
	myTextFrame.parentStory.insertionPoints.item(-1).contents = "Not equal to: \u2260\rSquare root: \u221A\rParagraph: \u00B6\r";
	//Entering InDesign special characters by their enumerations:
	myTextFrame.parentStory.insertionPoints.item(-1).contents = "Automatic page number marker:";
	myTextFrame.parentStory.insertionPoints.item(-1).contents = SpecialCharacters.autoPageNumber;
	myTextFrame.parentStory.insertionPoints.item(-1).contents = "\r";
	myTextFrame.parentStory.insertionPoints.item(-1).contents = "Section symbol:";
	myTextFrame.parentStory.insertionPoints.item(-1).contents = SpecialCharacters.sectionSymbol;
	myTextFrame.parentStory.insertionPoints.item(-1).contents = "\r";
	myTextFrame.parentStory.insertionPoints.item(-1).contents = "En dash:";
	myTextFrame.parentStory.insertionPoints.item(-1).contents = SpecialCharacters.enDash;
	myTextFrame.parentStory.insertionPoints.item(-1).contents = "\r";
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