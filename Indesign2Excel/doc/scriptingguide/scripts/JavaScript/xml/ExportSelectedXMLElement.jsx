//ExportSelectedXMLElement.jsx
//An InDesign CS6 JavaScript
//
//Shows how to export the selected XML element as a separate XML file.
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
}
function mySnippet(){
    //<fragment>
    var myDocument = app.activeDocument;
	myDocument.select(myDocument.xmlElements.item(0).xmlElements.item(1));
	myDocument.xmlExportPreferences.exportFromSelected = true;
	//Export the entire XML structure in the document.
	myDocument.exportFile(ExportFormat.xml, File(Folder.desktop+ "/SelectedXMLElement.xml"));
	myDocument.xmlExportPreferences.exportFromSelected = false;
    //</fragment>
}
function myTeardown(){
}