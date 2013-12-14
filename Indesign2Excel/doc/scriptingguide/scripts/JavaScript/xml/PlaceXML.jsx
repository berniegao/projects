//PlaceXML.jsx
//An InDesign CS6 JavaScript
//
//Shows how to place XML into the layout.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
    var myPage = app.activeWindow.activePage;
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
	var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage)});
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
	myDocument.xmlElements.item(0).placeXML(myPage.textFrames.item(0));
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