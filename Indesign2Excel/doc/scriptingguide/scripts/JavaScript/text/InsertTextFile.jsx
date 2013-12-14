//InsertTextFile.jsx
//An InDesign CS6 JavaScript
//
//Places a text file in text inside a text frame (without replacing the text).
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
	var myPage = myDocument.pages.item(0);
    var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myDocument.pages.item(0)), contents:"Inserted text file follows:\r"});
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.item(0);
    //Place a text file at the end of the text.
    //Parameters for InsertionPoint.place():
    //File as File object, 
    //[ShowingOptions as Boolean = False]
    //You'll have to fill in your own file path.
    myTextFrame.parentStory.insertionPoints.item(-1).place(File("/c/test.txt"));
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