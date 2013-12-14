//FindXMLElementByFindGrep.jsx
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
		var myRuleSet = new Array (new FindByContent);
		myResetFindChangeGrep();
		app.findGrepPreferences.findWhat = "(?i)pulse.*?triangle|triangle.*?pulse";
		with(myDocument){
			var elements = xmlElements;
			__processRuleSet(elements.item(0), myRuleSet);
		}
		myResetFindChangeGrep();
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
function FindByContent(){
    //Find descriptions that contain both "triangle" and "pulse".
    this.name = "FindByContent";
    //XPath will match on every description in the XML structure.
    this.xpath = "/devices/device/description";	
    this.apply = function(myElement, myRuleProcessor){
        var myFoundItems = myElement.texts.item(0).findGrep();
        if(myFoundItems.length != 0){
            myElement.texts.item(0).fillColor = app.documents.item(0).swatches.item(-1);
        }
        return true;
    }
}
function myResetFindChangeGrep(){
    app.findGrepPreferences = NothingEnum.nothing;
    app.changeGrepPreferences = NothingEnum.nothing;
}
//</fragment>