//InsertTextAsContent.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the insertTextAsContent method.
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
	myRootXMLElement.placeXML(myTextFrame);
}
function mySnippet(){
    //<fragment>
    var myDocument = app.activeDocument;
	var myXMLElement = myDocument.xmlElements.item(0).xmlElements.item(0);
	//By inserting the return character after the XML element, the character
	//becomes part of the content of the parent XML element, not of the element itself.
	myXMLElement.insertTextAsContent("\r", XMLElementPosition.afterElement);
	myXMLElement = myDocument.xmlElements.item(0).xmlElements.item(1);
	myXMLElement.insertTextAsContent("Static text: ", XMLElementPosition.beforeElement);
	myXMLElement.insertTextAsContent("\r", XMLElementPosition.afterElement);
	//To add text inside the element, set the location option to beginning or end.
	myXMLElement = myDocument.xmlElements.item(0).xmlElements.item(2);
	myXMLElement.insertTextAsContent("Text at the start of the element: ", XMLElementPosition.elementStart);
	myXMLElement.insertTextAsContent(" Text at the end of the element.", XMLElementPosition.elementEnd);
	myXMLElement.insertTextAsContent("\r", XMLElementPosition.afterElement);
	//Add static text outside the element.
	myXMLElement = myDocument.xmlElements.item(0).xmlElements.item(3);
	myXMLElement.insertTextAsContent("Text before the element: ", XMLElementPosition.beforeElement);
	myXMLElement.insertTextAsContent(" Text after the element.", XMLElementPosition.afterElement);
	//To insert text inside the text of an element, work with the text objects contained by the element.
	myXMLElement.words.item(2).insertionPoints.item(0).contents = "(the third word of) ";
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