//ApplyStylesToXMLElements.jsx
//An InDesign CS6 JavaScript
//
//Shows how to apply paragraph and character styles to XML elements
//without using a tag to style/style to tag mapping.
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
    var myDocument = app.activeDocument;
    var myPage = app.activeWindow.activePage;
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
    //Create a character style.
    var myCharacterStyle = myDocument.characterStyles.add();
    myCharacterStyle.name = "Emphasis";
    myCharacterStyle.fontStyle = "Italic";
    //Add XML elements and apply paragraph styles.
    var myRootXMLElement = myDocument.xmlElements.item(0);
    var myXMLElementA = myRootXMLElement.xmlElements.add(myHeading1XMLTag);
    myXMLElementA.contents = "Heading 1";
    myXMLElementA.insertTextAsContent("\r", XMLElementPosition.afterElement);
    myXMLElementA.applyParagraphStyle(myHeading1Style, true);
    var myXMLElementB = myRootXMLElement.xmlElements.add(myPara1XMLTag);
    myXMLElementB.contents = "This is the first paragraph in the article.";
    myXMLElementB.insertTextAsContent("\r", XMLElementPosition.afterElement);
    myXMLElementB.applyParagraphStyle(myPara1Style, true);
    var myXMLElementC = myRootXMLElement.xmlElements.add(myBodyTextXMLTag);
    myXMLElementC.contents = "This is the second paragraph in the article.";
    myXMLElementC.insertTextAsContent("\r", XMLElementPosition.afterElement);
    myXMLElementC.applyParagraphStyle(myBodyTextStyle, true);
    var myXMLElementD = myRootXMLElement.xmlElements.add(myHeading2XMLTag);
    myXMLElementD.contents = "Heading 2";
    myXMLElementD.insertTextAsContent("\r", XMLElementPosition.afterElement);
    myXMLElementD.applyParagraphStyle(myHeading2Style, true);
    var myXMLElementE = myRootXMLElement.xmlElements.add(myPara1XMLTag);
    myXMLElementE.contents = "This is the first paragraph following the subhead.";
    myXMLElementE.insertTextAsContent("\r", XMLElementPosition.afterElement);
    myXMLElementE.applyParagraphStyle(myPara1Style, true);
    var myXMLElementF = myRootXMLElement.xmlElements.add(myBodyTextXMLTag);
    myXMLElementF.contents = "This is the second paragraph following the subhead.";
    myXMLElementF.insertTextAsContent("\r", XMLElementPosition.afterElement);
    myXMLElementF.applyParagraphStyle(myBodyTextStyle, true);
    var myXMLElementG = myRootXMLElement.xmlElements.add(myBodyTextXMLTag);
    myXMLElementG.contents = "Note:";
    myXMLElementG = myXMLElementG.move(LocationOptions.atBeginning, myXMLElementF)
    myXMLElementG.insertTextAsContent(" ", XMLElementPosition.afterElement);
    myXMLElementG.applyCharacterStyle(myCharacterStyle, true);
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