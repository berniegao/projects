//AlternatingRows.jsx
//An InDesign CS6 JavaScript
//
//Shows how to format table rows using alternating rows.
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
	//Add colors.
	myAddColor(myDocument, "DGC1_446a", ColorModel.process, [0, 100, 0, 50]);
	myAddColor(myDocument, "DGC1_446b", ColorModel.process, [100, 0, 50, 0]);
	//Create a text frame on page 1.
	var myTextFrame = myPage.textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
    //Populate the table.
	var myString = "Head 1\tHead 2\tHead 3\r1a\t1b\t1c\r2a\t2b\t2c\r3a\t3b\t3c\r4a\t4b\t4c\r5a\t5b\t5c";
	myTextFrame.contents = myString;
	myTextFrame.texts.item(0).convertToTable();
    var myTable = myDocument.stories.item(0).tables.item(0);
    //Convert the first row to a header row.
    myTable.rows.item(0).rowType = RowTypes.headerRow;
}
function mySnippet(){
    var myDocument = app.documents.item(0);
    var myTable = myDocument.stories.item(0).tables.item(0);
    //<fragment>
    //Given a table "myTable," apply alternating fills to the table.
    myTable.alternatingFills = AlternatingFillsTypes.alternatingRows;
    myTable.startRowFillColor = myDocument.swatches.item("DGC1_446a");
    myTable.startRowFillTint = 60;
    myTable.endRowFillColor = myDocument.swatches.item("DGC1_446b");
    myTable.endRowFillTint = 50;
    //</fragment>
}
function myTeardown(){
}
function myAddColor(myDocument, myColorName, myColorModel, myColorValue){
	try{
		myColor = myDocument.colors.item(myColorName);
		myName = myColor.name;
	}
	catch (myError){
		myColor = myDocument.colors.add();
	}
	myColor.properties = {name:myColorName, model:myColorModel, colorValue:myColorValue};
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