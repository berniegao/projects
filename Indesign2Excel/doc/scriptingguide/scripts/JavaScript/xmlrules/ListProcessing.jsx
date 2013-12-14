//ListProcessing.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use forward-axis matching to add text between like XML elements.
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
    var myDocument = app.activeDocument;
	var myRuleSet = new Array (new ListItems);
	with(myDocument){
		var elements = xmlElements;
		__processRuleSet(elements.item(0), myRuleSet);
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
function ListItems(){
    //Add commas between each "item" element.
    this.name = "ListItems";
    this.xpath = "//xmlElement/item[1]/following-sibling::*";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            insertTextAsContent(", ", XMLElementPosition.beforeElement);
        }
        return false;
    }
}
//</fragment>