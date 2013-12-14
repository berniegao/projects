//FindXMLElementByFindText.jsx
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
		var myRuleSet = new Array (new FindByFindText);
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
function FindByFindText(){
    this.name = "FindByFindText";
    this.xpath = "/devices/device/description";	
    this.apply = function(myElement, myRuleProcessor){
        if(myElement.texts.item(0).contents != ""){
            //Clear the find text preferences.
            myResetFindText();
            //Search for the word "triangle" in the content of the element.
            app.findTextPreferences.findWhat = "triangle";
            var myFoundItems = myElement.texts.item(0).findText();
            if(myFoundItems.length != 0){
                myElement.texts.item(0).fillColor = app.documents.item(0).swatches.item(-1);
            }
            myResetFindText();
        }
            return true;
    }
}
function myResetFindText(){
    app.findTextPreferences = NothingEnum.nothing;
    app.changeTextPreferences = NothingEnum.nothing;
}
//</fragment>