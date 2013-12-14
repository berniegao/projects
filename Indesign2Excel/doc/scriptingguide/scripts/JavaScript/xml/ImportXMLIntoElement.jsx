//ImportXMLIntoSelectedElement.jsx
//An InDesign CS6 JavaScript
//
//Imports an XML element into an XML element.
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
	var myXMLElementB = myRootXMLElement.xmlElements.add(myXMLTag);
	myXMLElementB.contents = "B";
	var myXMLElementC = myRootXMLElement.xmlElements.add(myXMLTag);
	myXMLElementC.contents = "C";
	var myXMLElementD = myRootXMLElement.xmlElements.add(myXMLTag);
	myXMLElementD.contents = "D";
	myDocument.exportFile(ExportFormat.xml, File(Folder.desktop + "/test.xml"));

}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myPage = app.activeWindow.activePage;
	myDocument.importXML(File(Folder.desktop + "/test.xml"));
	var myRootXMLElement = myDocument.xmlElements.item(0);
	var myLastXMLElement = myRootXMLElement.xmlElements.item(-1);
	//Select the XML element
	myDocument.select(myLastXMLElement, SelectionOptions.replaceWith);
	myDocument.xmlImportPreferences.importToSelected = true;
	myDocument.importXML(File(Folder.desktop + "/test.xml"));
	var myTextFrame = myPage.textFrames.add();
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
	myRootXMLElement.placeXML(myTextFrame);
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