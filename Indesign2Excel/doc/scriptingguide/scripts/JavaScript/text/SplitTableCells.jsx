//SplitTableCells.jsx
//An InDesign CS6 JavaScript
//
//Shows how to split cells, column, and rows in a table.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	//Create an example document.
	var myDocument = app.documents.add();
    var myPage = app.activeWindow.activePage;
	//Create a text frame on the active page.
	var myTextFrame = myPage.textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
	//Fill the text frame with placeholder text.
	var myString = "Table\r";
	myTextFrame.contents = myString;
}
function mySnippet(){
	//<fragment>
	var myRowCounter, myRow, myCellCounter;
	var myDocument = app.documents.item(0);
	var myStory = myDocument.stories.item(0);
	var myTable = myStory.insertionPoints.item(-1).tables.add();
	myTable.columnCount = 1;
	myTable.bodyRowCount = 1;
	var myArray = myGetBounds(myDocument, myDocument.pages.item(0))
	var myWidth = myArray[3]-myArray[1];
	myTable.columns.item(0).width = myWidth;	
	myTable.cells.item(0).split(HorizontalOrVertical.horizontal);
	myTable.columns.item(0).split(HorizontalOrVertical.vertical);
	myTable.cells.item(0).split(HorizontalOrVertical.vertical);
	myTable.rows.item(-1).split(HorizontalOrVertical.horizontal);
	myTable.cells.item(-1).split(HorizontalOrVertical.vertical);
	for(myRowCounter = 0; myRowCounter < myTable.rows.length; myRowCounter ++){
		myRow = myTable.rows.item(myRowCounter);
		for(myCellCounter = 0; myCellCounter < myRow.cells.length; myCellCounter ++){
			myString = "Row: " + myRowCounter + " Cell: " + myCellCounter;
			myRow.cells.item(myCellCounter).contents = myString;
		}
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
