//Footnotes.jsx
//An InDesign CS6 JavaScript
//
//Shows how to add footnotes.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	//Create an example document.
	var myDocument = app.documents.add();
    var myPage = myDocument.pages.item(0);
	with(myDocument.footnoteOptions){
		separatorText = "\t";
		markerPositioning = FootnoteMarkerPositioning.superscriptMarker;
	}
	var myTextFrame = myPage.textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
	myTextFrame.textFramePreferences.firstBaselineOffset = FirstBaseline.leadingOffset;
	//Fill the text frame with placeholder text.
	myTextFrame.contents = TextFrameContents.placeholderText;
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
    var myTextFrame = myPage.textFrames.item(0);
    //Add four footnotes at random locations in the story.
	for(myCounter = 0; myCounter < 4; myCounter ++){
		myWord = myTextFrame.parentStory.words.item(myGetRandom(0, myTextFrame.parentStory.words.length));
		var myFootnote = myWord.insertionPoints.item(-1).footnotes.add();
		//Note: when you create a footnote, it contains text--the footnote marker
		//and the separator text (if any). If you try to set the text of the footnote
		//by setting the footnote contents, you will delete the marker. Instead, append
		//the footnote text, as shown below.
		myFootnote.insertionPoints.item(-1).contents = "This is a footnote.";
	}
    //</fragment>
}
function myTeardown(){
}
//<fragment>
//This function gets a random number in the range myStart to myEnd.
function myGetRandom(myStart, myEnd){
	var myRange = myEnd - myStart; 
	return myStart + Math.floor(Math.random()*myRange); 
}
//</fragment>
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