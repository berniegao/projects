//FindChangeText.jsx
//An InDesign CS6 JavaScript
//
//Shows how to find and change text.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	//Create a text frame on page 1.
	var myTextFrame = myDocument.pages.item(0).textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myDocument.pages.item(0));
	//Fill the text frame with placeholder text.
	var myString = "This is some copy. This is some more copy. This is even more example copy.\rThis is copy in another paragraph.";
	myTextFrame.contents = myString;
}
function mySnippet(){
	//<fragment>
	//Clear the find/change text preferences.
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
	//Search the document for the string "copy" and change it to "text".
	app.findTextPreferences.findWhat = "copy";
	app.changeTextPreferences.changeTo = "text";
	app.documents.item(0).changeText();
	//Clear the find/change text preferences after the search.
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