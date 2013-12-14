//MakeProcessingInstruction.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create an XML processing instruction.
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
	var myXMLProcessingInstruction = myRootXMLElement.xmlInstructions.add("xml-stylesheet type=\"text/css\" ", "href=\"generic.css\"");	
    //</fragment>
}
function myTeardown(){
}