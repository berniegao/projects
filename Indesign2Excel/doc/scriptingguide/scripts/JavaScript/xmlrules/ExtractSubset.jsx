//ExtractSubset.jsx
//An InDesign CS6 JavaScript
// 
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
		var myRuleSet = new Array (new ExtractVCO);
		var myMarkupTag = myDocument.xmlTags.add("VCOs");
		var myContainerElement = myDocument.xmlElements.item(0).xmlElements.add(myMarkupTag);
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
function ExtractVCO(){
    var myNewElement;
    this.name = "ExtractVCO";
    this.xpath = "/devices/device/type";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            if(myElement.texts.item(0).contents == "VCO"){
                myNewElement = myElement.parent.duplicate();
                myNewElement.move(LocationOptions.atEnd, app.documents.item(0).xmlElements.item(0).xmlElements.item(-1));
            }
        }
        return true;
    }
}
//</fragment>