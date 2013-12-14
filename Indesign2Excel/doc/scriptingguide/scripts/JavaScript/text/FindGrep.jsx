//FindGrep.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use regular expressions (i.e., "grep") to find and change text.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
    var myPage = myDocument.pages.item(0);
	//Create a text frame on page 1.
	var myTextFrame = myPage.textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
	//Fill the text frame with placeholder text.
    var p1 = "This is an email address: someone@adobe.com or anyone@adobe.com.\r"; 
    var p2 = "This is some more copy with an email address that ";
    var p3 = "is not 24-points: someone@adobe.com or anyone@adobe.com\r"; 
    var p4 = "This is even more example copy in 24 point text.";
    var p5 = "With an email address: someone@adobe.com.\r";
    var p6 = "This is copy in another paragraph.\r";
    var p7 = "Note that all 24 pt email addresses are underlined.\r"
    var myString = p1 + p2 + p3 + p4 + p5 + p6 + p7;
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
    //Clear the find/change grep preferences.
    app.findGrepPreferences = NothingEnum.nothing;
    app.changeGrepPreferences = NothingEnum.nothing;
    //Set the find options.
    app.findChangeGrepOptions.includeFootnotes = false;
    app.findChangeGrepOptions.includeHiddenLayers = false;
    app.findChangeGrepOptions.includeLockedLayersForFind = false;
    app.findChangeGrepOptions.includeLockedStoriesForFind = false;
    app.findChangeGrepOptions.includeMasterPages = false;
    //Regular expression for finding an email address.
    app.findGrepPreferences.findWhat = "(?i)[A-Z]*?@[A-Z]*?[.]...";
    //Apply the change to 24-point text only.
    app.findGrepPreferences.pointSize = 24;
    app.changeGrepPreferences.underline = true;
    myDocument.changeGrep();
    //Clear the find/change preferences after the search.
    app.findGrepPreferences = NothingEnum.nothing;
    app.changeGrepPreferences = NothingEnum.nothing;
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