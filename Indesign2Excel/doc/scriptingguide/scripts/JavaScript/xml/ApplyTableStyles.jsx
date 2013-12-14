//ApplyTableStyle.jsx
//An InDesign CS6 JavaScript
//
//Shows how to convert a series of XML elements to a table
//using the ConvertTextToTableByTag method and apply a style
//to them.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
}
function myTeardown(){
}
function mySnippet(){
	var myDocument = app.documents.add();
	//Create a series of XML tags.
	var myRowTag = myDocument.xmlTags.add("row");
	var myCellTag = myDocument.xmlTags.add("cell");
	var myTableTag = myDocument.xmlTags.add("table");
	//Create a table style and a cell style.
	var myTableStyle = myDocument.tableStyles.add({name:"myTableStyle"});
	myTableStyle.startRowFillColor = myDocument.colors.item("Black");
	myTableStyle.startRowFillTint = 25;
	myTableStyle.endRowFillColor = myDocument.colors.item("Black");
	myTableStyle.endRowFillTint = 10;
	var myCellStyle = myDocument.cellStyles.add();
	myCellStyle.fillColor = myDocument.colors.item("Black");
	myCellStyle.fillTint = 45
	//Add XML elements.
	var myRootXMLElement = myDocument.xmlElements.item(0);
	with(myRootXMLElement){
		var myTableXMLElement = xmlElements.add(myTableTag);
		with(myTableXMLElement){
			for(var myRowCounter = 1;myRowCounter < 7;myRowCounter++){
				with(xmlElements.add(myRowTag)){
					myString = "Row " + myRowCounter;
					for(var myCellCounter = 1; myCellCounter < 5; myCellCounter++){
						with(xmlElements.add(myCellTag)){
							contents = myString + ":Cell " + myCellCounter;
						}
					}
				}
			}
		}
	}
	var myTable = myTableXMLElement.convertElementToTable(myRowTag, myCellTag);
	var myTableXMLElement = myDocument.xmlElements.item(0).xmlElements.item(0);
	myTableXMLElement.applyTableStyle(myTableStyle);
	myTableXMLElement.xmlElements.item(0).applyCellStyle(myCellStyle);
	myTableXMLElement.xmlElements.item(5).applyCellStyle(myCellStyle);
	myTableXMLElement.xmlElements.item(10).applyCellStyle(myCellStyle);
	myTableXMLElement.xmlElements.item(15).applyCellStyle(myCellStyle);
	myTableXMLElement.xmlElements.item(16).applyCellStyle(myCellStyle);
	myTableXMLElement.xmlElements.item(21).applyCellStyle(myCellStyle);
	// Add text elements.
	var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage)});
	var myStory = myTextFrame.parentStory;
	myStory.placeXML(myRootXMLElement);
	myTable.alternatingFills = AlternatingFillsTypes.alternatingRows;
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