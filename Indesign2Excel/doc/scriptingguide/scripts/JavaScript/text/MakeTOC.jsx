//MakeTOC.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create a table of contents using scripting.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myParagraphStyle, myCharacterStyle, myColor, myName;
	//Create an example document.
	var myDocument = app.documents.add();
	var myPage = myDocument.pages.add();
	var mySection =  myDocument.sections.add(myPage, {continueNumbering:false, pageNumberStart:1});
	myDocument.sections.item(0).pageNumberStyle = PageNumberStyle.lowerRoman;
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	//Create some paragraph styles.
	var myBodyTextStyle = myMakeObject(myDocument, "ParagraphStyle", "BodyText");
	myBodyTextStyle.properties = {pointSize:10, leading:12};
	var myHeading1Style = myMakeObject(myDocument, "ParagraphStyle", "Heading1");
	myHeading1Style.properties = {pointSize:24, leading:24, spaceBefore:24};
	var myHeading2Style = myMakeObject(myDocument, "ParagraphStyle", "Heading2");
	myHeading2Style.properties = {pointSize:12, leading:12, spaceBefore:12, fontStyle:"Bold"};
	var myString = "Heading 1\r";
	myString += "This is a body text paragraph. It doesn't say anything important. It's just here to take up space.\r";
	myString += "Heading 2\r";
	myString += "This is another body text paragraph. It doesn't say anything important. It's just here to take up space.\r";
	myString += "Heading 2\r";
	myString += "Like the dummy paragraphs above, this is a body text paragraph. It doesn't say anything important. It's just here to take up space.\r";
	myString += "This is yet another a body text paragraph. It doesn't say anything important. It's just here to take up space.\r";
	myString += "Heading 2\r";
	myString += "Like the dummy paragraphs above, this is a body text paragraph. It doesn't say anything important. It's just here to take up space.\r";
	myString += "This is yet another a body text paragraph. It doesn't say anything important. It's just here to take up space.\r";
	myString += "Heading 2\r";
	myString += "Like the dummy paragraphs above, this is a body text paragraph. It doesn't say anything important. It's just here to take up space.\r";
	myString += "This is yet another a body text paragraph. It doesn't say anything important. It's just here to take up space.\r";
	var myBounds = myGetBounds(myDocument, myPage);
	myY1 = myBounds[2]/2;
	myX1 = myBounds[1];
	myY2 = myBounds[2];
	myX2 = myBounds[3];
	var myTextFrame = myPage.textFrames.add({geometricBounds:[myY1, myX1, myY2, myX2], contents:myString});
	myTextFrame.parentStory.texts.item(0).applyParagraphStyle(myBodyTextStyle, true);
	app.findTextPreferences = NothingEnum.nothing;
	app.changeTextPreferences = NothingEnum.nothing;
	app.changeTextPreferences.appliedParagraphStyle = myHeading1Style;
	app.findTextPreferences.findWhat = "Heading 1";
	myDocument.changeText();
	app.changeTextPreferences.appliedParagraphStyle = myHeading2Style;
	app.findTextPreferences.findWhat = "Heading 2";
	myDocument.changeText();
	app.findTextPreferences = NothingEnum.nothing;
	app.changeTextPreferences = NothingEnum.nothing;
}
function mySnippet(){
	//Create a TOC style and generate the TOC.
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	var myX = myPage.marginPreferences.left;
	var myY = myPage.marginPreferences.top;
	var myTabWidth = myDocument.documentPreferences.pageWidth - (myX + myPage.marginPreferences.right);
	//Create some TOC styles.
	var myHeading1TOCStyle = myMakeObject(myDocument, "ParagraphStyle", "Heading1TOC");
	myHeading1TOCStyle.properties = {pointSize:12, leading:12, fontStyle:"Bold"};
	myHeading1TOCStyle.tabStops.add({alignment:TabStopAlignment.rightAlign, position:myTabWidth, leader:"."});
	var myHeading2TOCStyle = myMakeObject(myDocument, "ParagraphStyle", "Heading2TOC");
	myHeading2TOCStyle.properties = {pointSize:10, leading:12};
	myHeading2TOCStyle.tabStops.add({alignment:TabStopAlignment.rightAlign, position:myTabWidth, leader:"."});
	var myTabLeaderStyle = myMakeObject(myDocument, "CharacterStyle", "TabLeader");
	myTabLeaderStyle.properties = {fontStyle:"Regular", pointSize:10};
	var myTOCStyle = myDocument.tocStyles.add();
	myTOCStyle.name = "ExampleTOCStyle";
	myTOCStyle.createBookmarks = true;
	myTOCStyle.title = "Contents";
	myTOCStyle.titleStyle = myDocument.paragraphStyles.item("Heading1");
	var myTOCStyleEntry = myTOCStyle.tocStyleEntries.add("Heading1");
	myTOCStyleEntry.formatStyle = myHeading1TOCStyle;
	myTOCStyleEntry.separator = "\t";
	myTOCStyleEntry.separatorStyle = myTabLeaderStyle;
	var myTOCStyleEntry = myTOCStyle.tocStyleEntries.add("Heading2");
	myTOCStyleEntry.properties = {formatStyle:myHeading2TOCStyle, separator:"\t", separatorStyle:myTabLeaderStyle};
	//CreateTOC parameters:
	//Using As TOCStyle
	//[Replacing As Boolean = False]
	//[FromBook]
	//[PlacePoint]
	//[IncludeOverset As Boolean = False]
	//[DestinationLayer]
	myDocument.createTOC(myTOCStyle, undefined, undefined, [myX, myY]);
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
function myMakeObject(myDocument, myObjectType, myObjectName){
	var myObject, myName;
	switch(myObjectType){
		case "ParagraphStyle":
			try{
				myObject = myDocument.paragraphStyles.item(myObjectName);
				myName = myObject.name;
			}
			catch (myError){
				myObject = myDocument.paragraphStyles.add({name:myObjectName});
			}
			break;
		case "CharacterStyle":
			try{
				myObject = myDocument.characterStyles.item(myObjectName);
				myName = myObject.name;
			}
			catch (myError){
				myObject = myDocument.characterStyles.add({name:myObjectName});
			}
			break;
		case "Color":
			try{
				myObject = myDocument.colors.item(myObjectName);
				myName = myObject.name;
			}
			catch (myError){
				myObject = myDocument.colors.add({name:myObjectName});
			}
			break;
		case "Layer":
			try{
				myObject = myDocument.layers.item(myObjectName);
				myName = myObject.name;
			}
			catch (myError){
				myObject = myDocument.layers.add({name:myObjectName});
			}
			break;
	}
	return myObject;
}