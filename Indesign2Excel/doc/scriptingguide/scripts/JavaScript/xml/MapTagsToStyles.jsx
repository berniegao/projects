//MapTagsToStyles.jsx
//An InDesign CS6 JavaScript
//
//Demonstrates tag to style mapping.
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
	//Create a series of XML tags.
	var myHeading1XMLTag = myDocument.xmlTags.add("heading_1");
	var myHeading2XMLTag = myDocument.xmlTags.add("heading_2");
	var myPara1XMLTag = myDocument.xmlTags.add("para_1");
	var myBodyTextXMLTag = myDocument.xmlTags.add("body_text");
	//Create a series of paragraph styles.
	var myHeading1Style = myDocument.paragraphStyles.add();
	myHeading1Style.name = "heading 1";
	myHeading1Style.pointSize = 24;
	var myHeading2Style = myDocument.paragraphStyles.add();
	myHeading2Style.name = "heading 2";
	myHeading2Style.pointSize = 14;
	myHeading2Style.spaceBefore = 12;
	var myPara1Style = myDocument.paragraphStyles.add();
	myPara1Style.name = "para 1";
	myPara1Style.pointSize = 12;
	myPara1Style.firstLineIndent = 0;
	var myBodyTextStyle = myDocument.paragraphStyles.add();
	myBodyTextStyle.name = "body text";
	myBodyTextStyle.pointSize = 12;
	myBodyTextStyle.firstLineIndent = 24;
	//Add XML elements.
	var myRootXMLElement = myDocument.xmlElements.item(0);
	var myXMLElementA = myRootXMLElement.xmlElements.add(myHeading1XMLTag);
	myXMLElementA.contents = "Heading 1";
	myXMLElementA.insertTextAsContent("\r", XMLElementPosition.afterElement);
	var myXMLElementB = myRootXMLElement.xmlElements.add(myPara1XMLTag);
	myXMLElementB.contents = "This is the first paragraph in the article.";
	myXMLElementB.insertTextAsContent("\r", XMLElementPosition.afterElement);
	var myXMLElementC = myRootXMLElement.xmlElements.add(myBodyTextXMLTag);
	myXMLElementC.contents = "This is the second paragraph in the article.";
	myXMLElementC.insertTextAsContent("\r", XMLElementPosition.afterElement);
	var myXMLElementD = myRootXMLElement.xmlElements.add(myHeading2XMLTag);
	myXMLElementD.contents = "Heading 2";
	myXMLElementD.insertTextAsContent("\r", XMLElementPosition.afterElement);
	var myXMLElementE = myRootXMLElement.xmlElements.add(myPara1XMLTag);
	myXMLElementE.contents = "This is the first paragraph following the subhead.";
	myXMLElementE.insertTextAsContent("\r", XMLElementPosition.afterElement);
	var myXMLElementF = myRootXMLElement.xmlElements.add(myBodyTextXMLTag);
	myXMLElementF.contents = "This is the second paragraph following the subhead.";
	myXMLElementF.insertTextAsContent("\r", XMLElementPosition.afterElement);
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
	//Create a tag to style mapping.
	myDocument.xmlImportMaps.add(myDocument.xmlTags.item("heading_1"), myDocument.paragraphStyles.item("heading 1"));
	myDocument.xmlImportMaps.add(myDocument.xmlTags.item("heading_2"), myDocument.paragraphStyles.item("heading 2"));
	myDocument.xmlImportMaps.add(myDocument.xmlTags.item("para_1"), myDocument.paragraphStyles.item("para 1"));
	myDocument.xmlImportMaps.add(myDocument.xmlTags.item("body_text"), myDocument.paragraphStyles.item("body text"));
	//Map the XML tags to the defined styles.
	myDocument.mapXMLTagsToStyles();
	//Place the XML element in the layout to see the result.
	var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage)});
	var myStory = myTextFrame.parentStory;
	myStory.placeXML(myDocument.xmlElements.item(0));
    //</fragment>
}
function myTeardown(){
}
function myGetBounds(myDocument, myPage){
	var myPageWidth = myDocument.documentPreferences.pageWidth;
	var myPageHeight = myDocument.documentPreferences.pageHeight
	if(myPage.side == PageSideOptions.leftHand){
		var myX1 = myPage.marginPreferences.right;
		var myX2 = myPage.marginPreferences.left;
	}
	else{
		var myX1 = myPage.marginPreferences.left;
		var myX2 = myPage.marginPreferences.right;
	}
	var myX2 = myPageWidth - myX2;
	var myY1 = myPage.marginPreferences.top;
	var myY2 = myPageHeight - myPage.marginPreferences.bottom;
	return [myY1, myX1, myY2, myX2];
}