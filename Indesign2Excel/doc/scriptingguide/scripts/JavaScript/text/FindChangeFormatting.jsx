//FindChangeFormatting.jsx
//An InDesign CS6 JavaScript
//
//Shows how to find and change text formatting.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
    var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
	//Fill the text frame with placeholder text.
	var myString = "This is some copy.\rThis is some more copy.\rThis is even more example copy.\rThis is copy in another paragraph.";
	myTextFrame.contents = myString;
	//Apply formatting to the text.
	myTextFrame.parentStory.paragraphs.item(0).pointSize = 24;
	myTextFrame.parentStory.paragraphs.item(1).pointSize = 12;	
	myTextFrame.parentStory.paragraphs.item(2).pointSize = 24;	
	myTextFrame.parentStory.paragraphs.item(3).pointSize = 12;
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    //Clear the find/change preferences.
    app.findTextPreferences = NothingEnum.nothing;
    app.changeTextPreferences = NothingEnum.nothing;
    //Set the find options.
    app.findChangeTextOptions.caseSensitive = false;
    app.findChangeTextOptions.includeFootnotes = false;
    app.findChangeTextOptions.includeHiddenLayers = false;
    app.findChangeTextOptions.includeLockedLayersForFind = false;
    app.findChangeTextOptions.includeLockedStoriesForFind = false;
    app.findChangeTextOptions.includeMasterPages = false;
    app.findChangeTextOptions.wholeWord = false;
    //Search the document for the 24 point text and change it to 10 point text.
    app.findTextPreferences.pointSize = 24;
    app.changeTextPreferences.pointSize = 10;
    myDocument.changeText();
    //Clear the find/change preferences after the search.
    app.findTextPreferences = NothingEnum.nothing;
    app.changeTextPreferences = NothingEnum.nothing;
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