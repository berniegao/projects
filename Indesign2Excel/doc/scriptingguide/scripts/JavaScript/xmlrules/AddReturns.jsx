//AddReturns.jsx
//An InDesign CS6 JavaScript
//
//Adds a return character between each XML element.
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
    var myFilePath = myFindFile("XMLRulesExampleSetup.jsx");
    if(myFilePath){
        app.doScript(File(myFilePath));
    }
    else{
        alert("Please choose the XMLRulesExampleSetup.jsx file!");
    }
}
function mySnippet(){
    //<fragment>
	if (app.documents.length != 0){
		var myDocument = app.documents.item(0); 
		//This rule set contains a single rule.
		var myRuleSet = new Array (new AddReturns);
		with(myDocument){
			var elements = xmlElements;
			__processRuleSet(elements.item(0), myRuleSet);
		}
	}
	else{
		alert("No open document");
	}
    //</fragment>
}
function myTeardown(){
}

function myFindFile(scriptName){
    var myScript = app.activeScript;
    var myParentFolder = File(myScript).parent;
    var myFindScript = myParentFolder + "//" + scriptName;
    if(!File(myFindScript).exists){
        myFindScript = File.openDialog ("Locate the XMLRuleExampleSetup.jsx", "*.jsx", false);
        }
    return myFindScript;
}
//<fragment>
function AddReturns(){
    //Adds a return character at the end of every XML element.
    this.name = "AddReturns";
    //XPath will match on every XML element in the XML structure.
    this.xpath = "//*";	
    // Define the apply function.
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            //Add a return character at the end of the XML element.
            insertTextAsContent("\r", XMLElementPosition.ELEMENT_END);
        }
        return true;
    }
}
//</fragment>