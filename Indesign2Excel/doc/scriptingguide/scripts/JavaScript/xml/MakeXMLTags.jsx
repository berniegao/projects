//MakeXMLTags.jsx
//An InDesign CS6 JavaScript
//
//Creates a set of XML tags.
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
	//Access the active document and page.
	var myDocument = app.activeDocument;
	var myPage = app.activeWindow.activePage;
	//You can create an XML tag without specifying a color for the tag.
	var myXMLTagA = myDocument.xmlTags.add("XML_tag_A");
	//You can define the highlight color of the XML tag using the UIColors enumeration...
	var myXMLTagB = myDocument.xmlTags.add("XML_tag_B", UIColors.gray);
	//...or you can provide an RGB array to set the color of the tag.
	var myXMLTagC = myDocument.xmlTags.add("XML_tag_C", [0, 92, 128]);
	//</fragment>
}
function myTeardown(){
}