//FindXMLElementByAttribute.jsx
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
		var myRuleSet = new Array(new AddAttribute);
		with(myDocument){
			var elements = xmlElements;
			__processRuleSet(elements.item(0), myRuleSet);
		}
		//Now that the attributes have been added, find and format
		//the XML element whose attribute content matches a specific string.
		var myRuleSet = new Array(new FindAttribute);
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
function AddAttribute(){
    this.name = "AddAttribute";
    //XPath will match on every part_number XML element in the XML structure.
    this.xpath = "/devices/device/part_number";	
    this.apply = function(myElement, myRuleProcessor){
        myElement.parent.xmlAttributes.add("part_number", myElement.texts.item(0).contents);
        return true;
    }
}
function FindAttribute(){
    this.name = "FindAttribute";
    this.xpath = "/devices/device[@part_number = 'DS001']";	
    this.apply = function(myElement, myRuleProcessor){
        myElement.xmlElements.item(0).texts.item(0).fillColor = app.documents.item(0).swatches.item(-1);
        return true;
    }
}
//</fragment>