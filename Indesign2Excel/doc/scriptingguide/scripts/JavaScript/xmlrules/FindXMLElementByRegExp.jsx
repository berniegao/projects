//FindXMLElementByRegExp.jsx
//An InDesign CS6 JavaScript
//
//You must copy the file "glue code.jsx" from the XML Rules folder (inside the Scripts
//folder inside your InDesign folder) to the folder containing this script, or provide a full
//path to the file in the next line.
#include "glue code.jsx";
main();
function main(){
	if (app.documents.length != 0){
		var myDocument = app.documents.item(0);
		var myRuleSet = new Array (new FindByContent);
		with(myDocument){
			var elements = xmlElements;
			__processRuleSet(elements.item(0), myRuleSet);
		}
	}
	else{
		alert("No open document");
	}
	function FindByContent(){
		//Find descriptions that contain both "triangle" and "pulse".
		var myRegExp = /triangle.*?pulse|pulse.*?triangle/i
		this.name = "FindByContent";
		this.xpath = "/devices/device/description";	
		this.apply = function(myElement, myRuleProcessor){
			if(myRegExp.test(myElement.texts.item(0).contents) == true){
				myElement.texts.item(0).fillColor = app.documents.item(0).swatches.item(-1);
			}
			return true;
		}
	}
}