//AssociatedXMLElement.jsx
//An InDesign CS6 JavaScript
//
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
	myXMLElementA.contents = "A";
	var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage)});
	myTextFrame.placeXML(myXMLElementA);
	function myGetBounds(myDocument, myPage){
		var myWidth = myDocument.documentPreferences.pageWidth;
		var myHeight = myDocument.documentPreferences.pageHeight;
		var myX1 = myPage.marginPreferences.left;
		var myY1 = myPage.marginPreferences.top;
		var myX2 = myWidth - myPage.marginPreferences.right;
		var myY2 = myHeight - myPage.marginPreferences.bottom;
		return [myY1, myX1, myY2, myX2];
	}
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myXMLElement = myDocument.pages.item(0).textFrames.item(0).associatedXMLElement;
	//Add an attribute to the XML element to show the association.
	myXMLElement.xmlAttributes.add("association", "text frame id: " + myDocument.pages.item(0).textFrames.item(0).id);
}
function myTeardown(){
}
