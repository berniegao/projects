//ExportXML.jsx
//An InDesign CS6 JavaScript
//
//Shows how to export XML.
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
	with (myXMLElementD){
		for(var myCounter = 0; myCounter < 5; myCounter++){
			with(xmlElements.add(myXMLTag)){
				contents = "D" + myCounter;
			}
		}
	}
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	//Export the entire XML structure in the document.
	myDocument.exportFile(ExportFormat.xml, File(Folder.desktop + "/CompleteDocumentXML.xml"));
	//Export a specific XML element and its child XML elements.
	var myXMLElement = myDocument.xmlElements.item(0).xmlElements.item(-1);
	myXMLElement.exportFile(ExportFormat.xml, File(Folder.desktop + "/PartialDocumentXML.xml"));
	//</fragment>
}
function myTeardown(){
}