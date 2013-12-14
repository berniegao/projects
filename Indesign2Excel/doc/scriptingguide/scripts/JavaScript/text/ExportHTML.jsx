//ExportHTML.jsx
//An InDesign CS6 JavaScript
//
//Exports the text in a document as HTML by traversing the stories in
//the document and writing the text to disk as HTML markup.
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
	//Create example paragraph styles
	myHeading1Style = myMakeParagraphStyle(myDocument, "heading1");
	myHeading1Style.pointSize = 24;
	myHeading2Style = myMakeParagraphStyle(myDocument, "heading2");
	myHeading2Style.pointSize = 16;
	myHeading3Style = myMakeParagraphStyle(myDocument, "heading3");
	myHeading3Style.pointSize = 12;
	myBodyTextStyle = myMakeParagraphStyle(myDocument, "body_text");
	myBodyTextStyle.pointSize = 10;
	//Create a text frame on page 1.
	var myTextFrame = myDocument.pages.item(0).textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myDocument.pages.item(0));
	//Fill the text frame with placeholder text.
	var myString = "Heading 1\r";
	myString += "This is a normal paragraph.\r";
	myString += "Heading 2\r";
	myString += "This is another normal paragraph.\r";
	myString += "Heading 3\r";
	myString += "This is yet another normal paragraph.\r";
	myString += "Column 1\tColumn 2\tColumn 3\r1a\t1b\t1c\r2a\t2b\t2c\r3a\t3b\t3c\r";
	myTextFrame.contents = myString;
	myTextFrame.parentStory.paragraphs.item(0).applyParagraphStyle(myHeading1Style);
	myTextFrame.parentStory.paragraphs.item(1).applyParagraphStyle(myBodyTextStyle);
	myTextFrame.parentStory.paragraphs.item(2).applyParagraphStyle(myHeading2Style);
	myTextFrame.parentStory.paragraphs.item(3).applyParagraphStyle(myBodyTextStyle);
	myTextFrame.parentStory.paragraphs.item(4).applyParagraphStyle(myHeading3Style);
	myTextFrame.parentStory.paragraphs.item(5).applyParagraphStyle(myBodyTextStyle);
	var myStartCharacter = myTextFrame.parentStory.paragraphs.item(6).characters.item(0);
	var myEndCharacter = myTextFrame.parentStory.characters.item(-2);
	var myText = myTextFrame.parentStory.texts.itemByRange(myStartCharacter, myEndCharacter)
	myText.convertToTable();
	var myTable = myTextFrame.parentStory.tables.item(0);
	var myRow = myTable.rows.item(0);
	myRow.rowType = RowTypes.headerRow;
}
function myMakeParagraphStyle(myDocument, myStyleName){
	var myStyle;
	try{
		myStyle = myDocument.paragraphStyles.item(myStyleName);
		var myName = myStyle.name;
	}
	catch (myError){
		myStyle = myDocument.paragraphStyles.add({name:myStyleName});
	}
	return myStyle;
}
function mySnippet(){
    //<fragment>
	var myStory, myParagraph, myString, myTag, myStartTag, myEndTag, myTextStyleRange, myTable;
	//Use the myStyleToTagMapping array to set up your paragraph style to tag mapping.
	var myStyleToTagMapping = new Array;
	//For each style to tag mapping, add a new item to the array.
	myStyleToTagMapping.push(["body_text", "p"]);
	myStyleToTagMapping.push(["heading1", "h1"]);
	myStyleToTagMapping.push(["heading2", "h2"]);
	myStyleToTagMapping.push(["heading3", "h3"]);
	//End of style to tag mapping.
	if(app.documents.length !=0){
		if(app.documents.item(0).stories.length != 0){
			//Open a new text file.
			var myTextFile = File.saveDialog("Save HTML As", undefined);
			//If the user clicked the Cancel button, the result is null.
			if(myTextFile != null){
				//Open the file with write access.
				myTextFile.open("w");
				//Iterate through the stories.
				for(var myCounter = 0; myCounter < app.documents.item(0).stories.length; myCounter ++){
					myStory = app.documents.item(0).stories.item(myCounter);
					for(var myParagraphCounter = 0; myParagraphCounter < myStory.paragraphs.length; myParagraphCounter ++){
						myParagraph = myStory.paragraphs.item(myParagraphCounter);
						if(myParagraph.tables.length == 0){
							if(myParagraph.textStyleRanges.length == 1){
								//If the paragraph is a simple paragraph--no tables, no local formatting--then
								//simply export the text of the pararaph with the appropriate tag.
								myTag = myFindTag(myParagraph.appliedParagraphStyle.name, myStyleToTagMapping);
								//If the tag comes back empty, map it to the basic paragraph tag.
								if(myTag == ""){
									myTag = "p";
								}
								myStartTag = "<" + myTag + ">";
								myEndTag = "</" + myTag + ">";
								//If the paragraph is not the last paragraph in the story,
								//omit the return character.
								if(myParagraph.characters.item(-1).contents == "\r"){
									myString = myParagraph.texts.itemByRange(myParagraph.characters.item(0), myParagraph.characters.item(-2)).contents;
								}
								else{
									myString = myParagraph.contents;						
								}
								//Write the paragraphs' text to the text file.
								myTextFile.writeln(myStartTag + myString + myEndTag);
							}
							else{
								//Handle text style range export by iterating through the text style ranges in the paragraph..
								for(var myRangeCounter = 0; myRangeCounter < myParagraph.textStyleRanges.length; myRangeCounter ++){
									myTextStyleRange = myParagraph.textStyleRanges.item(myRangeCounter);
									if(myTextStyleRange.characters.item(-1)=="\r"){
										myString = myTextStyleRange.texts.itemByRange(myTextStyleRange.characters.item(1), myTextStyleRange.characters.item(-2)).contents;
									}
									else{
										myString = myTextStyleRange.contents;
									}
									switch(myTextStyleRange.fontStyle){
										case "Bold":
											myString = "<b>" + myString + "</b>"
											break;
										case "Italic":
											myString = "<i>" + myString + "</i>"
											break;
									}
									myTextFile.write(myString);
								}
								myTextFile.write("\r");
							}
						}
						else{
							//Handle table export (assumes that there is only one table per paragraph,
							//and that the table is in the paragraph by itself).
							myTable = myParagraph.tables.item(0);
							myTextFile.writeln("<table border = 1>");
							for(var myRowCounter = 0; myRowCounter < myTable.rows.length; myRowCounter ++){
								myTextFile.writeln("<tr>");
								for(var myColumnCounter = 0; myColumnCounter < myTable.columns.length; myColumnCounter++){
									if(myRowCounter == 0){
										myString = "<th>" + myTable.rows.item(myRowCounter).cells.item(myColumnCounter).texts.item(0).contents + "</th>";
									}
									else{
										myString = "<td>" + myTable.rows.item(myRowCounter).cells.item(myColumnCounter).texts.item(0).contents + "</td>";
									}
									myTextFile.writeln(myString);
								}
								myTextFile.writeln("</tr>");
							}
							myTextFile.writeln("</table>");
						}
					}
				}
				//Close the text file.
				myTextFile.close();
			}
		}
	}
    //</fragment>
}
function myTeardown(){
}
//<fragment>
function myFindTag (myStyleName, myStyleToTagMapping){
	var myTag = "";
	var myDone = false;
	var myCounter = 0;
	do{
		if(myStyleToTagMapping[myCounter][0] == myStyleName){
			myTag = myStyleToTagMapping[myCounter][1];
			break;
		}
		myCounter ++;
	} while((myDone == false)||(myCounter < myStyleToTagMapping.length))
	return myTag;
}
//</fragment>
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