//DeleteXMLElement.jsx
//An InDesign CS6 JavaScript
//
//Shows how to delete an XML element.
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
	var myRootXMLElement = myDocument.xmlElements.item(0);
	//Delete the XML element containing "A"
	myRootXMLElement.xmlElements.item(0).remove();
    //</fragment>
}
function myTeardown(){
}