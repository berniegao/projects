//SaveXMLTags.jsx
//An InDesign CS6 JavaScript
//
//Saves a set of XML tags to a file.
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
    var myXMLTagB = myDocument.xmlTags.add("XML_tag_B");
    var myXMLTagC = myDocument.xmlTags.add("XML_tag_C");
    //You'll have to fill in a valid file path for your system.
    myDocument.saveXMLTags(File(Folder.desktop + "/xml_tags.xml"));
    //</fragment>
}
function myTeardown(){
}