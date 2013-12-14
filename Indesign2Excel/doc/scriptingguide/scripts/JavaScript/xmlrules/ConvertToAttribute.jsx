//ConvertToAttribute.jsx
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
		var myRuleSet = new Array (new ConvertToAttribute);
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
//Converts all part_number XML elements to XML attributes.
function ConvertToAttribute(){
    this.name = "ConvertToAttribute";
    this.xpath = "/devices/device/part_number";	
    this.apply = function(myElement, myRuleProcessor){
        //Use __skipChildren to prevent the XML rule processor from becoming
        //invalid when we convert the XML element to an attribute.
        __skipChildren(myRuleProcessor);
        //Converts the XML element to an XML attribute of its parent XML element. 
        myElement.convertToAttribute("PartNumber");
        return true;
    }
}
//</fragment>