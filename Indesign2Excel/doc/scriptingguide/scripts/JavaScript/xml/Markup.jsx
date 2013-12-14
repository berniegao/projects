//Markup.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the markup method.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
    var myPage = app.activeWindow.activePage;
    var myRootXMLElement = myDocument.xmlElements.item(0);
    var myXMLTag = myDocument.xmlTags.add("xml_element");
    var myXMLElementA = myRootXMLElement.xmlElements.add(myXMLTag);
    myXMLElementA.contents = "This is a paragraph in an XML story.";
    var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage)});
    myTextFrame.contents = "This is the first paragraph in a text frame.\rThis is the second paragraph in a text frame.\rThis is the third paragraph in a text frame.\rThis is the fourth paragraph in a text frame.\r";
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
	myDocument.xmlElements.item(0).xmlElements.item(0).markup(myPage.textFrames.item(0));
    //</fragment>
}
function myTeardown(){
}
function myGetBounds(myDocument, myPage){
	var myPageWidth = myDocument.documentPreferences.pageWidth;
	var myPageHeight = myDocument.documentPreferences.pageHeight
	if(myPage.side == PageSideOptions.leftHand){
		var myX2 = myPage.marginPreferences.left;
		var myX1 = myPage.marginPreferences.right;
	}
	else{
		var myX1 = myPage.marginPreferences.left;
		var myX2 = myPage.marginPreferences.right;
	}
	var myY1 = myPage.marginPreferences.top;
	var myX2 = myPageWidth - myX2;
	var myY2 = myPageHeight - myPage.marginPreferences.bottom;
	return [myY1, myX1, myY2, myX2];
}