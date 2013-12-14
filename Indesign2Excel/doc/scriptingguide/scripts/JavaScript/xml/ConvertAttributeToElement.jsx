//ConvertAttributeToElement.jsx
//An InDesign CS6 JavaScript
//
//Converts an XML attribute to an XML element.
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
	myXMLElementB.xmlAttributes.add("example_attribute", "This is an XML attribute. It will not appear in the layout!");
}
function mySnippet(){
    //<fragment>
    var myDocument = app.activeDocument;
	var myRootXMLElement = myDocument.xmlElements.item(0);
	var myXMLElementB = myRootXMLElement.xmlElements.item(1);
	myXMLElementB.xmlAttributes.item(0).convertToElement(XMLElementLocation.elementEnd, myDocument.xmlTags.item("xml_element"));
    //</fragment>
}
function myTeardown(){
}

