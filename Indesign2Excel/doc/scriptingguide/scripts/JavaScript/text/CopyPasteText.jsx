//CopyPasteText.jsx
//An InDesign CS6 JavaScript
//
//Copies text from one document and pastes it into another.
//Create an example document.
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
    var myDocumentA = app.documents.add();
    var myPageA = myDocumentA.pages.item(0);
    var myString = "Example text.\r";
    var myTextFrameA = myPageA.textFrames.add({geometricBounds:myGetBounds(myDocumentA, myPageA), contents:myString});
    var myDocumentB = app.documents.add();
    var myPageB = myDocumentB.pages.item(0);
    var myTextFrameB = myPageB.textFrames.add({geometricBounds:myGetBounds(myDocumentB, myPageB)});
    //Make document A the active document.
    app.activeDocument = myDocumentA;
    //Select the text.
    app.select(myTextFrameA.parentStory.texts.item(0));
    app.copy();
    //Make document B the active document.
    app.activeDocument = myDocumentB;
    //Select the insertion point at which you want to paste the text.
    app.select(myTextFrameB.parentStory.insertionPoints.item(0));
    app.paste();
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