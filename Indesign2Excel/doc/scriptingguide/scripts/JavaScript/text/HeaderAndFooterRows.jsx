//HeaderAndFooterRows.jsx
//An InDesign CS6 JavaScript
//
//Shows how to add header and footer rows to a table.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	//Create an example document.
	var myDocument = app.documents.add();
    var myPage = myDocument.pages.item(0);
	//Create a text frame on page 1.
	var myTextFrame = myPage.textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
	var myString = "Head 1\tHead 2\tHead 3\r1a\t1b\t1c\r2a\t2b\t2c\r3a\t3b\t3c\rFoot 1\tFoot 2\tFoot 3";
	myTextFrame.contents = myString;
	myTextFrame.texts.item(0).convertToTable();
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myTable = myDocument.stories.item(0).tables.item(0);
	//Convert the first row to a header row.
	myTable.rows.item(0).rowType = RowTypes.headerRow;
	//Convert the last row to a footer row.
	myTable.rows.item(-1).rowType = RowTypes.footerRow;
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