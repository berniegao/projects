//MoveXMLElements.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use an XML rule to move an XML element
//in the XML structure.
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
		var myRuleSet = new Array (new MoveElement);
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
//Adds a return character at the end of every XML element.
function MoveElement(){
    this.name = "MoveElement";
    this.xpath = "/devices/device/part_number";	
    this.apply = function(myElement, myRuleProcessor){
        //Moves the part_number XML element to the start of 
        //the device XML element (the parent).
        __skipChildren(myRuleProcessor);
        myElement.move(LocationOptions.before, myElement.parent.xmlElements.item(0));
        return true;
    } 
}
//</fragment>