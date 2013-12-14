//XMLStory.jsx
//An InDesign CS6 JavaScript
//
//Shows how to apply text formatting to unplaced XML content.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	var myRootXMLElement = myDocument.xmlElements.item(0);
	var myXMLTag = myDocument.xmlTags.add("xml_element");
	var myXMLElementA = myRootXMLElement.xmlElements.add(myXMLTag);
	myXMLElementA.contents = "This is a paragraph in an XML story.";
	var myXMLElementB = myRootXMLElement.xmlElements.add(myXMLTag);
	myXMLElementB.contents = "This is another paragraph in an XML story.";
	var myXMLElementC = myRootXMLElement.xmlElements.add(myXMLTag);
	myXMLElementC.contents = "This is the third paragraph in an example XML story.";
	var myXMLElementD = myRootXMLElement.xmlElements.add(myXMLTag);
	myXMLElementD.contents = "This is the last paragraph in the XML story.";
	var myTextFrame = myDocument.pages.item(0).textFrames.add({geometricBounds:myGetBounds(myDocument, myDocument.pages.item(0))});
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
	var myXMLStory = myDocument.xmlStories.item(0);
	//Though the text has not yet been placed in the layout, all text
	//properties are available.
	myXMLStory.paragraphs.item(0).pointSize = 72;
	//Place the XML element in the layout to see the result.
	myDocument.xmlElements.item(0).xmlElements.item(0).placeXML(myDocument.pages.item(0).textFrames.item(0));
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