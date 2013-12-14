//MergeTableCells.jsx
//An InDesign CS6 JavaScript
//
//Shows how to merge cells in a table.
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
	//Fill the text frame with placeholder text.
	var myString = "Table\r";
	myTextFrame.contents = myString;
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myStory = myDocument.stories.item(0);
    var myTable = myStory.insertionPoints.item(-1).tables.add();
    myTable.columnCount = 4;
    myTable.bodyRowCount = 4;
    //Merge all of the cells in the first column.
    myTable.cells.item(0).merge(myTable.columns.item(0).cells.item(-1));
    //Convert column 2 into 2 cells (rather than 4).
    myTable.columns.item(1).cells.item(-1).merge(myTable.columns.item(1).cells.item(-2));
    myTable.columns.item(1).cells.item(0).merge(myTable.columns.item(1).cells.item(1));
    //Merge the last two cells in row 1.
    myTable.rows.item(0).cells.item(-2).merge(myTable.rows.item(0).cells.item(-1));
    //Merge the last two cells in row 3.
    myTable.rows.item(2).cells.item(-2).merge(myTable.rows.item(2).cells.item(-1));
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