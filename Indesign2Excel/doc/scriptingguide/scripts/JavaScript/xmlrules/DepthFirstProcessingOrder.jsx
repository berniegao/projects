//DepthFirstProcessing_A.jsx
//An InDesign CS6 JavaScript
//
//Explores the ramifications of depth-first processing.
//
//You must copy the file "glue code.jsx" from the XML Rules folder (inside the Scripts
//folder inside your InDesign folder) to the folder containing this script, or provide a full
//path to the file in the next line.
#include "glue code.jsx";
main();
function main(){
	if (app.documents.length != 0){
		var myDocument = app.documents.item(0); 
		//This rule set contains a single rule.
		var myTextFrame = myDocument.pages.item(0).textFrames.add();
		myTextFrame.geometricBounds = myGetBounds(myDocument, myDocument.pages.item(0));
		myTextFrame.insertionPoints.item(-1).contents = "Normal Rule\r";
		var myRuleSet = new Array (new NormalRule);
		with(myDocument){
			var elements = xmlElements;
			__processRuleSet(elements.item(0), myRuleSet);
		}
		myTextFrame.insertionPoints.item(-1).contents = "Skip Children Rule\r";
		myRuleSet = new Array (new SkipChildrenRule);
		with(myDocument){
			var elements = xmlElements;
			__processRuleSet(elements.item(0), myRuleSet);
		}
		myTextFrame.insertionPoints.item(-1).contents = "ProcessChildrenRule Rule\r";
		myRuleSet = new Array (new ProcessChildrenRule);
		with(myDocument){
			var elements = xmlElements;
			__processRuleSet(elements.item(0), myRuleSet);
		}
	}
	else{
		alert("No open document");
	}
	function NormalRule(){
		this.name = "NormalRule";
		this.xpath = "//XMLElement";	
		this.apply = function(myElement, myRuleProcessor){
			app.documents.item(0).stories.item(0).insertionPoints.item(-1).contents = myElement.xmlAttributes.item(0).value + "\r";
			return false;
		}
	}
	function SkipChildrenRule(){
		this.name = "NormalRule";
		this.xpath = "//XMLElement";	
		this.apply = function(myElement, myRuleProcessor){
			__skipChildren(myRuleProcessor);
			app.documents.item(0).stories.item(0).insertionPoints.item(-1).contents = myElement.xmlAttributes.item(0).value + "\r";
			return false;
		}
	}
	function ProcessChildrenRule(){
		this.name = "NormalRule";
		this.xpath = "//XMLElement";	
		this.apply = function(myElement, myRuleProcessor){
			__processChildren(myRuleProcessor);
			app.documents.item(0).stories.item(0).insertionPoints.item(-1).contents = myElement.xmlAttributes.item(0).value + "\r";
			return false;
		}
	}
	function myGetBounds(myDocument, myPage){
		var myWidth = myDocument.documentPreferences.pageWidth;
		var myHeight = myDocument.documentPreferences.pageHeight;
		var myX1 = myPage.marginPreferences.left;
		var myY1 = myPage.marginPreferences.top;
		var myX2 = myWidth - myPage.marginPreferences.right;
		var myY2 = myHeight - myPage.marginPreferences.bottom;
		return [myY1, myX1, myY2, myX2];
	}	
}