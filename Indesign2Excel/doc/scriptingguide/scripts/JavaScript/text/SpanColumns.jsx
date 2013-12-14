//SpanColumns.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set Span/Split columns.

main();

function main(){
	mySetup();
	mySnippet();
}

function mySetup(){
	//Create an example document.
	var myDocument = app.documents.add();
	var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.add();
	with(myTextFrame) {	
        textFramePreferences.textColumnCount = 3;
        //Set the bounds of the text frame.
        var myBounds = myGetBounds(myDocument, myPage);
        geometricBounds = myBounds;
        //Fill the text frame with placeholder text.
        contents = TextFrameContents.placeholderText;
        geometricBounds = [myBounds[0], myBounds[1], myBounds[2] * 2, myBounds[3]];
    }
}

function mySnippet(){
	//<fragment>
	var myDocument = app.activeDocument;
	var myPage = myDocument.pages.item(0);
	var myStory = myPage.textFrames.item(0).parentStory;
	
	//Split Column
	with(myStory.paragraphs[0]) {	
		spanColumnType = SpanColumnTypeOptions.splitColumns;
		spanSplitColumnCount = 2;
		splitColumnOutsideGutter = 0; 
		splitColumnInsideGutter = 1;
	}

	//Span Columns
	var mySpanIndex = Math.floor(myStory.paragraphs.length / 2);
	with(myStory.paragraphs[mySpanIndex]) {	
		spanColumnType = SpanColumnTypeOptions.spanColumns;
		spanSplitColumnCount = SpanColumnCountOptions.all;
	}
	//</fragment>
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
	var myY2 = (myPageHeight - myPage.marginPreferences.bottom) / 2;
	return [myY1, myX1, myY2, myX2];
}