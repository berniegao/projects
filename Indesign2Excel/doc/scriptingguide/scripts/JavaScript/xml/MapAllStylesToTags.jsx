//MapAllStylesToTags.jsx
//An InDesign CS6 JavaScript
//
//Demonstrates style to tag mapping.
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
	// Add text elements.
	var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage)});
	var myStory = myTextFrame.parentStory;
	myStory.insertionPoints.item(-1).contents = "Heading 1\r";
	myStory.paragraphs.item(-1).applyParagraphStyle(myHeading1Style, true);
	myStory.insertionPoints.item(-1).contents = "This is the first paragraph in the article.\r";
	myStory.paragraphs.item(-1).applyParagraphStyle(myPara1Style, true);
	myStory.insertionPoints.item(-1).contents = "This is the second paragraph in the article.\r";
	myStory.paragraphs.item(-1).applyParagraphStyle(myBodyTextStyle, true);
	myStory.insertionPoints.item(-1).contents = "Heading 2\r";
	myStory.paragraphs.item(-1).applyParagraphStyle(myHeading2Style, true);
	myStory.insertionPoints.item(-1).contents = "This is the first paragraph following the subhead.\r";
	myStory.paragraphs.item(-1).applyParagraphStyle(myPara1Style, true);
	myStory.insertionPoints.item(-1).contents = "This is the second paragraph following the subhead.\r";
	myStory.paragraphs.item(-1).applyParagraphStyle(myBodyTextStyle, true);
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
	//Create tags that match the style names in the document,
	//creating an XMLExportMap for each tag/style pair.
	for(var myCounter = 0; myCounter<myDocument.paragraphStyles.length; myCounter++){
		var myParagraphStyle = myDocument.paragraphStyles.item(myCounter);
		var myParagraphStyleName = myParagraphStyle.name;
		var myXMLTagName = myParagraphStyleName.replace(/\ /gi, "_")
		myXMLTagName = myXMLTagName.replace(/\[/gi, "")
		myXMLTagName = myXMLTagName.replace(/\]/gi, "")
		var myXMLTag = myDocument.xmlTags.add(myXMLTagName);
		myDocument.xmlExportMaps.add(myParagraphStyle, myXMLTag);
	}
	//Apply the style to tag mapping.
	myDocument.mapStylesToXMLTags();
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