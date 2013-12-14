//CreateXMLElement.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create an XML element.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
}
function mySnippet(){
    //<fragment>
    //Access the active document.
    var myDocument = app.activeDocument;
    var myXMLTagA = myDocument.xmlTags.add("XML_tag_A");
    var myXMLElementA = myDocument.xmlElements.item(0).xmlElements.add(myXMLTagA);
    myXMLElementA.contents = "This is an XML element containing text.";
    //</fragment>
}
function myTeardown(){
}