//ReturningFalse.jsx
//An InDesign CS6 JavaScript
// 
// Rem Demonstrates the effect of returning false vs. returning true
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
	myCounter = 0;
	if (app.documents.length != 0){
		var myDocument = app.documents.item(0);
		//Define two colors. 
		var myColorA = myDocument.colors.add({model:ColorModel.process, colorValue:[0, 100, 80, 0], name:"ColorA"});
		var myColorB = myDocument.colors.add({model:ColorModel.process, colorValue:[100, 0, 80, 0], name:"ColorB"})
		var myRuleSet = new Array (new ReturnFalse, new ReturnTrue);
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
//Adds a color to the text of every element in the structure.
function ReturnFalse(){
    this.name = "ReturnFalse";
    //XPath will match on every XML element in the XML structure.
    this.xpath = "//*";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            myElement.texts.item(0).fillColor = app.documents.item(0).colors.item("ColorA");
        }
        // Leaves the XML element available to further processing.
        return false;
    }
}
//Adds a color to the text of every other element in the structure.
function ReturnTrue(){
    this.name = "ReturnTrue";
    //XPath will match on every XML element in the XML structure.
    this.xpath = "//*";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            if(myCounter % 2 == 0){
                myElement.texts.item(0).fillColor = app.documents.item(0).colors.item("ColorB");
            }
            myCounter++;
        }
        //Do not process the element with any further matching rules.
        return true;
    }
}
//</fragment>
