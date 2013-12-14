//AnchoredFrame.jsx
//An InDesign CS6 JavaScript
00//
//Shows how to create an anchored frame.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage), contents:TextFrameContents.placeholderText});
	myTextFrame.texts.item(0).leftIndent = 72;
}
function mySnippet(){ 
	var myDocument = app.activeDocument;
	var myPage = app.activeWindow.activePage;
	var myTextFrame = myPage.textFrames.item(0);
    //<fragment>
	var myInsertionPoint = myTextFrame.paragraphs.item(0).insertionPoints.item(0);
    var myInlineFrame = myInsertionPoint.textFrames.add();
	//Recompose the text to make sure that getting the 
	//geometric bounds of the inline graphic will work.
	myTextFrame.texts.item(0).recompose;
	//Get the geometric bounds of the inline frame.
	var myBounds = myInlineFrame.geometricBounds;
	//Set the width and height of the inline frame. In this example, we'll
	//make the frame 24 points tall by 72 points wide.
    var myArray = [myBounds[0], myBounds[1], myBounds[0]+24, myBounds[1]+72];
	myInlineFrame.geometricBounds = myArray;
	myInlineFrame.contents = "This is an inline frame.";
    myInsertionPoint = myTextFrame.paragraphs.item(1).insertionPoints.item(0);
	var myAnchoredFrame = myInsertionPoint.textFrames.add();
	//Recompose the text to make sure that getting the 
	//geometric bounds of the inline graphic will work.
	myTextFrame.texts.item(0).recompose;
	//Get the geometric bounds of the inline frame.
	var myBounds = myAnchoredFrame.geometricBounds;
	//Set the width and height of the inline frame. In this example, we'll
	//make the frame 24 points tall by 72 points wide.
	myArray = [myBounds[0], myBounds[1], myBounds[0]+24, myBounds[1]+72];
    myAnchoredFrame.geometricBounds = myArray;
	myAnchoredFrame.contents = "This is an anchored frame.";
	with(myAnchoredFrame.anchoredObjectSettings){
		anchoredPosition = AnchorPosition.anchored;
		anchorPoint = AnchorPoint.topLeftAnchor;
		horizontalReferencePoint = AnchoredRelativeTo.anchorLocation;
		horizontalAlignment = HorizontalAlignment.leftAlign;
		anchorXoffset = 72;
		verticalReferencePoint = VerticallyRelativeTo.lineBaseline;
		anchorYoffset = 24;
		anchorSpaceAbove = 24;
	}
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