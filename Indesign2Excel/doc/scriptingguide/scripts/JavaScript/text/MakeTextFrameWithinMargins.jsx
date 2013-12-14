//MakeTextFrameWithinMargins.jsx
//An InDesign CS6 JavaScript
//
//Creates a text frame in an example document
//and sizes the text frame to match the page margins.
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
	var myPage = myDocument.pages.item(0);
    //Create a text frame on the current page.
    var myTextFrame = myPage.textFrames.add();
    //Set the bounds of the text frame.
    myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
    //Enter text in the text frame.
    myTextFrame.contents = "This is some example text."
    //</fragment>
}
function myTeardown(){
}
//<fragment>
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
//</fragment>