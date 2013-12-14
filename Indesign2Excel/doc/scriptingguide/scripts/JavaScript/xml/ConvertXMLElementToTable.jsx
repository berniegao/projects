//ConvertXMLElementToTable.jsx
//An InDesign CS6 JavaScript
//
//Shows how to convert an XML element to a table.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
    //Create a series of XML tags.
    var myRowTag = myDocument.xmlTags.add("row");
    var myCellTag = myDocument.xmlTags.add("cell");
    var myTableTag = myDocument.xmlTags.add("table");
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
    // Add text elements.
    var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage)});
    var myStory = myTextFrame.parentStory;
    myStory.placeXML(myRootXMLElement);
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