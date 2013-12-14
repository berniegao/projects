//LoadXMLTags.jsx
//An InDesign CS6 JavaScript
//
//Loads a set of XML tags from a file.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	var myRootXMLElement = myDocument.xmlElements.item(0);
	var myXMLTag = myDocument.xmlTags.add("xml_elementA");
	var myXMLTag = myDocument.xmlTags.add("xml_elementB");
	var myXMLTag = myDocument.xmlTags.add("xml_elementC");
	myDocument.save(File(Folder.desktop + "/xml_tags.indd"));
	myDocument.close();
}
function mySnippet(){
    //<fragment>
    //Access the active document and page.
    var myDocument = app.documents.add();
    myDocument.loadXMLTags (File(Folder.desktop + "/xml_tags.indd"));
    //</fragment>
}
function myTeardown(){
}