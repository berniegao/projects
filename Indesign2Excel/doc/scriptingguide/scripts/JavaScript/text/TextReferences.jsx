//TextReferences.jsx
//An InDesign CS6 JavaScript
//
//Make an example document.
var myDocument = myCreateExampleDocument();
var myStory = myDocument.stories.item(0);
var myChangingWord = myStory.words.item(3);
var myStaticWord = myStory.paragraphs.item(1).words.item(-1);
alert("Changing Word: " + myChangingWord.contents + "\r" + "Static Word: " + myStaticWord.contents);
myStory.paragraphs.item(0).insertionPoints.item(0).contents = "Added text. ";
alert("Changing Word: " + myChangingWord.contents + "\r" + "Static Word: " + myStaticWord.contents);
function myCreateExampleDocument(){
	var myString = "Rackstraw, Ralph\r";
	myString += "Corcoran, Josephine\r";
	myString += "Deadeye, Dick\r";
	myString += "Porter, Joseph\r";
	myString += "Buttercup, Little\r";
	myString += "Corcoran, Edward\r";
	myString += "Bobstay, Bill\r";
	myString += "Becket, Bob\r";
	//Create an example document.
	var myDocument = app.documents.add();
	//Create a text frame on page 1.
	var myTextFrame = myDocument.pages.item(0).textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myDocument.pages.item(0));
	//Fill the text frame with example text.
	myTextFrame.contents = myString;
	return myDocument;
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

