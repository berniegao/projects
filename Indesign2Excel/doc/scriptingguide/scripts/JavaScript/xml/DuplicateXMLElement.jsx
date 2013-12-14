//DuplicateXMLElement.jsx
//An InDesign CS6 JavaScript
//
//Shows how to duplicate an XML element in the XML structure.
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
    var myDocument = app.documents.item(0);
	var myRootXMLElement = myDocument.xmlElements.item(0);
	//Duplicate the XML element containing "A"
	var myNewXMLElement = myRootXMLElement.xmlElements.item(0).duplicate();
	//Change the content of the duplicated XML element.
	myNewXMLElement.contents = myNewXMLElement.contents + " duplicate";
    //</fragment>
}
function myTeardown(){
}