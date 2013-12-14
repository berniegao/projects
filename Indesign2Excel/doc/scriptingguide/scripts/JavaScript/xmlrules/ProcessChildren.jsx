//ProcessChildren.jsx
//An InDesign CS6 JavaScript
//
//Shows the difference(s) between an XML rule without
// __processChildren and an XML rule that uses __processChildren..
//You must copy the file "glue code.jsx" from the XML Rules folder (inside the Scripts
//folder inside your InDesign folder) to the folder containing this script, or provide a full
//path to the file in the next line.
#include "glue code.jsx";
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
}
function mySnippet(){
    //<fragment>
    var myDocument = app.activeDocument;
    var myPage = app.activeWindow.activePage;
    var myRootXMLElement = myDocument.xmlElements.item(0);
    var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage)});
    var myStory = myTextFrame.parentStory;
    var myRuleSet = new Array (new NormalRule, new ProcessChildrenRule);
    with(myDocument){
    	var elements = xmlElements;
    	__processRuleSet(elements.item(0), myRuleSet);
    }
    //</fragment>
}
function myTeardown(){
}
//<fragment>
//XML rules follow.
function NormalRule(){
	this.name = "NormalRule";
	this.xpath = "//XMLElement";	
	this.apply = function(myElement, myRuleProcessor){
		app.documents.item(0).stories.item(0).insertionPoints.item(-1).contents = myElement.xmlAttributes.item(0).value + "\r";
		return false;
	}
}
function ProcessChildrenRule(){
	this.name = "ProcessChildrenRule";
	this.xpath = "//XMLElement";	
	this.apply = function(myElement, myRuleProcessor){
		__processChildren(myRuleProcessor);
		app.documents.item(0).stories.item(0).insertionPoints.item(-1).contents = myElement.xmlAttributes.item(0).value + "\r";
		return false;
	}
}
//</fragment>
function myGetBounds(myDocument, myPage){
	var myPageWidth = myDocument.documentPreferences.pageWidth;
	var myPageHeight = myDocument.documentPreferences.pageHeight;
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