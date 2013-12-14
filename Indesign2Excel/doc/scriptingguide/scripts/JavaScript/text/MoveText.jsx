//MoveText.jsx
//An InDesign CS6 JavaScript
//
//Shows how to move text.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
    var myPage = myDocument.pages.item(0);
    //Set the bounds live area of the page.
    myBounds = myGetBounds(myDocument, myPage);
    var myX1 = myBounds[1];
    var myY1 = myBounds[0];
    var myX2 = myBounds[3];
    var myY2 = myBounds[2];
    var myWidth = myX2-myX1;
    var myHeight = myY2-myY1;
    //Create a series of text frames.
    var myTextFrameA = myPage.textFrames.add({geometricBounds:[myY1, myX1, myY1 + (myHeight/2), myX1 + (myWidth/2)], contents:"Before.\r"});
    var myTextFrameB = myPage.textFrames.add({geometricBounds:[myY1, myX1+(myWidth/2), myY1 + (myHeight/2), myX2], contents:"After.\r"});
    var myTextFrameC = myPage.textFrames.add({geometricBounds:[myY1 + (myHeight/2), myX1, myY2, myX1 + (myWidth/2)], contents:"Between words.\r"});
    var myTextFrameD = myPage.textFrames.add({geometricBounds:[myY1 + (myHeight/2), myX1+(myWidth/2), myY2, myX2], contents:"Text to move:\rWordA\rWordB\rWordC\r"});
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
	var myTextFrameA = myPage.textFrames.item(3);
	var myTextFrameB = myPage.textFrames.item(2);
	var myTextFrameC = myPage.textFrames.item(1);
	var myTextFrameD = myPage.textFrames.item(0);
    //Move WordC between the words in TextFrameC.
    myTextFrameD.parentStory.paragraphs.item(-1).words.item(0).move(LocationOptions.before, myTextFrameC.parentStory.paragraphs.item(0).words.item(1))
    //Move WordB after the word in TextFrameB.
    myTextFrameD.parentStory.paragraphs.item(-2).words.item(0).move(LocationOptions.after, myTextFrameB.parentStory.paragraphs.item(0).words.item(0))
    //Move WordA to before the word in TextFrameA.
    myTextFrameD.parentStory.paragraphs.item(-3).words.item(0).move(LocationOptions.before, myTextFrameA.parentStory.paragraphs.item(0).words.item(0))
    //Note that moving text removes it from its original location.
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