//XMLRulesProcessor.jsx
//An InDesign CS6 JavaScript
//
//Uses the XML rule processor object to find XML elements
//in the XML structure of a document.
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
	var myXPath = ["/devices/device"];
	var myXMLMatches = mySimulateXPath(myXPath);
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
function mySimulateXPath(myXPath){
    var myXMLElements = new Array;
    var myRuleProcessor = app.xmlRuleProcessors.add(myXPath);
    try{
        var myMatchData = myRuleProcessor.startProcessingRuleSet(app.documents.item(0).xmlElements.item(0));
        while(myMatchData != undefined){
            var myElement = myMatchData.element;
            myXMLElements.push(myElement);
            myMatchData = myRuleProcessor.findNextMatch();
        }	 
        myRuleProcessor.endProcessingRuleSet();
        myRuleProcessor.remove();
        return myXMLElements;
    }
    catch (myError){
        myRuleProcessor.endProcessingRuleSet();
        myRuleProcessor.remove();
        throw myError;
    }
}
//</fragment>