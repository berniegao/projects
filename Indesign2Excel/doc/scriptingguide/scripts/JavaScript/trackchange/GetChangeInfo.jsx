//GetChangeInfo.jsx
//An InCopy CS6 JavaScript
//
//Shows how to get Track change infomation
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
}
function mySnippet(){
	var myDocument = app.documents.add();
    var myTextFrame = myDocument.textFrames.add({geometricBounds: [0, 0, 12, 12], contents: "This is a story."});
	myGetChangeInfo();
}
function myTeardown(){
}
function myGetChangeInfo()
{
    //<fragment>
	var myDocument = app.documents.item(0);
	var myStory = myDocument.stories.item(0);
	var myChange = myStory.changes.item(0);
	//ChangeTypes.DELETED_TEXT  (Read Only) Deleted text.
	//ChangeTypes.DELETED_TEXT  (Read Only) Deleted text.
	//ChangeTypes.MOVED_TEXT  (Read Only) Moved text.
	var myChangeTypes = myChange.changeType;
	//Characters  A collection of characters.
	var myCharacters = myChange.characters;
	var myDate = myChange.date;
	//InsertionPoints A collection of insertion points.
	var myInsertionPoints = myChange.insertionPoints;
	//Change.lines  (Read Only) A collection of lines.
	var myLines = myChange.lines;
	//Change.paragraphs  (Read Only) A collection of paragraphs.
	var myParagraphs = myChange.paragraphs;
	var myStoryOffset = myChange.storyOffset;
	//Change.textColumns  (Read Only) A collection of text columns.
	var myTextColumns = myChange.textColumns;
	//Change.textStyleRanges  (Read Only) A collection of text style ranges.
	var myTextStyleRanges = myChange.textStyleRanges;
	//Change.textVariableInstances  (Read Only) A collection of text variable instances.
	var myTextVariableInstances = myChange.textVariableInstances;
	//Change.texts  (Read Only) A collection of text objects.
	var myTexts = myChange.texts;
	var myUserName = myChange.userName;
	var myWords = myChange.words;
    //</fragment>
}
