//MoveTextBetweenDocuments.jsx
//An InDesign CS6 JavaScript
//
//Moves formatted text from one document to another.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
}
function mySnippet(){
	//<fragment>
    //Create the source document.
	var mySourceDocument = app.documents.add();
	var mySourcePage = mySourceDocument.pages.item(0);
	var mySourceTextFrame = mySourcePage.textFrames.add({geometricBounds:myGetBounds(mySourceDocument, mySourcePage), contents:"This is the source text.\rThis text is not the source text."});
    var mySoureParagraph = mySourceTextFrame.parentStory.paragraphs.item(0);
    mySoureParagraph.pointSize = 24;
    //Create the target document.
    var myTargetDocument = app.documents.add();
    var myTargetPage = myTargetDocument.pages.item(0);
    var myTargetTextFrame = myTargetPage.textFrames.add({geometricBounds:myGetBounds(myTargetDocument, myTargetDocument.pages.item(0)), contents:"This is the target text. Insert the source text before this paragraph.\r"});
	//Move the text from the source document to the target document.
    //This deletes the text from the source document.
	mySoureParagraph.move(LocationOptions.AT_BEGINNING, myTargetTextFrame.insertionPoints.item(0));
	//To duplicate (rather than move) the text, use the following:
	//mySoureParagraph.duplicate(LocationOptions.AT_BEGINNING, myTargetTextFrame.insertionPoints.item(0));
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