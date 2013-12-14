//FontCollections.jsx
//An InDesign CS6 JavaScript
//
//Shows the difference between the fonts collection of the application
//and the fonts collection of a document.
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
}
function mySnippet(){
    //<fragment>
    var myApplicationFonts = app.fonts;
    var myDocument = app.documents.item(0);
    var myStory = myDocument.stories.item(0);
    var myDocumentFonts = myDocument.fonts;
    var myFontNames = myApplicationFonts.everyItem().name;
    var myDocumentFontNames = myDocument.fonts.everyItem().name;
    var myString = "Document Fonts:\r";
    for(var myCounter = 0;myCounter<myDocumentFontNames.length; myCounter++){
    	myString += myDocumentFontNames[myCounter] + "\r";
    }
    myString += "\rApplication Fonts:\r";
    for(var myCounter = 0;myCounter<myFontNames.length; myCounter++){
    	myString += myFontNames[myCounter] + "\r";
    }
    myStory.contents = myString;
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