//ExportTextRange.jsx
//An InDesign CS6 JavaScript
//
//Creates a story in an example document and then exports 
//some of the text to a text file.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	var myPage = myDocument.pages.item(0);
	//Create a text frame on the active page.
	var myTextFrame = myPage.textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
	//Fill the text frame with placeholder text.
	myTextFrame.contents = TextFrameContents.placeholderText;
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myStory = myDocument.stories.item(0);
	var myStart = myStory.characters.item(0);
	var myEnd = myStory.paragraphs.item(0).characters.item(-1);
    myText = myStory.texts.itemByRange(myStart, myEnd);
    //Text exportFile method parameters:
    //Format as ExportFormat
    //To As File
    //[ShowingOptions As Boolean = False]
    //Format parameter can be:
    //ExportFormat.inCopy
    //ExportFormat.inCopyCS2Story
    //ExportFormat.rtf
    //ExportFormat.taggedText
    //ExportFormat.textType
    //Export the text range. You'll have to fill in a valid file path on your system.
    myText.exportFile(ExportFormat.textType, File("/c/test.txt"));
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