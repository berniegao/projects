//AddReturnsAndStaticText.jsx
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
		//This rule set contains a single rule.
		var myRuleSet = new Array (new ProcessDevice,
										new ProcessName,
										new ProcessType,
										new ProcessPartNumber,
										new ProcessSupplyVoltage,
										new ProcessPackageType,
										new ProcessPackageOne,
										new ProcessPackages,
										new ProcessPrice);
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
//Adds a return character at the end of the "device" XML element.
function ProcessDevice(){
    this.name = "ProcessDevice";
    this.xpath = "/devices/device";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            //Add a return character at the end of the XML element.
            insertTextAsContent("\r", XMLElementPosition.afterElement);
        }
        return true;
    }
}
//Adds a return character at the end of the "name" XML element.
function ProcessName(){
    this.name = "ProcessName";
    this.xpath = "/devices/device/name";	
    // Define the apply function.
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            //Add static text at the beginning of the XML element.
            insertTextAsContent("Device Name: ", XMLElementPosition.beforeElement);
            //Add a return character at the end of the XML element.
            insertTextAsContent("\r", XMLElementPosition.afterElement);
        }
        return true;
    }
}
//Adds a return character at the end of the "type" XML element.
function ProcessType(){
    this.name = "ProcessType";
    this.xpath = "/devices/device/type";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            //Add static text at the beginning of the XML element.
            insertTextAsContent("Circuit Type: ", XMLElementPosition.beforeElement);
            //Add a return character at the end of the XML element.
            insertTextAsContent("\r", XMLElementPosition.beforeElement);
        }
        return true;
    }
}
//Adds a return character at the end of the "part_number" XML element.
function ProcessPartNumber(){
    this.name = "ProcessPartNumber";
    this.xpath = "/devices/device/part_number";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            //Add static text at the beginning of the XML element.
            insertTextAsContent("Part Number: ", XMLElementPosition.beforeElement);
            //Add a return character at the end of the XML element.
            insertTextAsContent("\r", XMLElementPosition.afterElement);
        }
        return true;
    }
}
//Adds static text around the "minimum" and "maximum"
//XML elements of the "supply_voltage" XML element.
function ProcessSupplyVoltage(){
    this.name = "ProcessSupplyVoltage";
    this.xpath = "/devices/device/supply_voltage";	
    this.apply = function(myElement, myRuleProcessor){
        //Note the positions at which we insert the static text. If we use
        //XMLElementPosition.elementEnd, the static text will appear inside the XML element.
        //If we use XMLElementPosition.afterElement, the static text appears outside the
        //XML elment (as a text element of the parent element).
        with(myElement){
            //Add static text to the beginning of the voltage range.
            insertTextAsContent("Supply Voltage: From ", XMLElementPosition.elementStart);				
            with(myElement.xmlElements.item(0)){
                insertTextAsContent(" to ", XMLElementPosition.afterElement);				
            }
            with(myElement.xmlElements.item(-1)){
                //Add static text to the beginning of the voltage range.
                insertTextAsContent(" volts", XMLElementPosition.afterElement);				
            }
            //Add a return at the end of the XML element.
            insertTextAsContent("\r", XMLElementPosition.afterElement);
        }
        return true;
    }
}
function ProcessPackageType(){
    this.name = "ProcessPackageType";
    this.xpath = "/devices/device/package/type";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            insertTextAsContent("-", XMLElementPosition.afterElement);
        }
        return true;
    }
}
//Add the text "Package:" before the list of packages.
function ProcessPackageOne(){
    this.name = "ProcessPackageOne";
    this.xpath = "/devices/device/package[1]";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            insertTextAsContent("Package: ", XMLElementPosition.elementStart);
        }
        return false; //Return false to let other XML rules process the element.
    }
}
//Add commas between the package types.
function ProcessPackages(){
    this.name = "ProcessPackages";
    this.xpath = "/devices/device/package";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            if(myElement.parent.xmlElements.nextItem(myElement).markupTag.name == "package"){
                insertTextAsContent(", ", XMLElementPosition.elementEnd);
            }
            else{
                insertTextAsContent("\r", XMLElementPosition.afterElement);
            }
        }
        return true;
    }
}
function ProcessPrice(){
    this.name = "ProcessPrice";
    this.xpath = "/devices/device/price";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            insertTextAsContent("Price: $", XMLElementPosition.beforeElement);
            //Add a return at the end of the XML element.
            insertTextAsContent("\r", XMLElementPosition.afterElement);
        }
        return true;
    }
}
//</fragment>