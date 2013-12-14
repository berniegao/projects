//XMLRulesTable.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create a table from XML elements using XML rules.
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
    var myDocument = app.documents.add();
	myDocument.xmlImportPreferences.allowTransform = false;
	myDocument.xmlImportPreferences.ignoreWhitespace = true;
	var myScriptPath = myGetScriptPath();
	var myFilePath = myScriptPath.path + "/XMLRulesExampleData.xml"
	myDocument.importXML(File(myFilePath));
	var myBounds = myGetBounds(myDocument, myDocument.pages.item(0));
	myDocument.xmlElements.item(0).placeIntoFrame(myDocument.pages.item(0), myBounds);
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
	//Document set-up.
	try{
		myPage.textFrames.item(0).remove();
	}
	catch(myError){}
	var myScriptPath = myGetScriptPath();
	var myRowTag = myDocument.xmlTags.add("Row");
	var myColumnTag = myDocument.xmlTags.add("Column");
	//Create an XML rule set that adds attributes.
	var myRuleSet = new Array (new AddTypeAttribute);
	with(myDocument){
		var elements = xmlElements;
		__processRuleSet(elements.item(0), myRuleSet);
	}
	//Create a container element for the VCO elements.
	var myMarkupTag = myDocument.xmlTags.add("VCOs");
	//myVCOElement will contain the VCO elements we'll duplicate for the table.
	var myVCOElement = myDocument.xmlElements.item(0).xmlElements.add(myMarkupTag);
	//myContainerElement is the XML element we'll convert to a table (it's a global variable).
	myContainerElement = myVCOElement.xmlElements.add(myMarkupTag);
	with(myContainerElement){
		var myRowXMLElement = xmlElements.add(myRowTag);
		with(myRowXMLElement){
			xmlElements.add(myColumnTag, {contents:"Name"});
			xmlElements.add(myColumnTag, {contents:"Part Number"});
			xmlElements.add(myColumnTag, {contents:"Power"});
			xmlElements.add(myColumnTag, {contents:"Package"});
			xmlElements.add(myColumnTag, {contents:"Price"});
			xmlElements.add(myColumnTag, {contents:"Description"});
		}
	}
	myRuleSet = new Array (new ProcessDevice,
								new ProcessName,
								new ProcessType,
								new ProcessPartNumber,
								new ProcessPackageOne,
								new ProcessPackage,
								new ProcessMaximumVoltage,
								new ProcessSupplyVoltage,
								new ProcessPrice,
								new ProcessDescription);
	with(myDocument){
		elements = xmlElements;
		__processRuleSet(elements.item(0), myRuleSet);
	}
	var myBounds = myGetBounds(myDocument, myPage);
	var myTable = myContainerElement.convertElementToTable(myRowTag, myColumnTag);
	myTable.width = myBounds[3]-myBounds[1];
	myVCOElement.placeIntoFrame(myPage, myBounds);
	var myTitleRow = myTable.rows.add(LocationOptions.atBeginning);
	myTitleRow.cells.item(0).merge(myTitleRow.cells.item(-1));
	myTitleRow.cells.item(0).insertionPoints.item(0).contents = "Voltage Controlled Oscillators";
	myTitleRow.cells.item(0).texts.item(0).justification = Justification.centerAlign;
	myTitleRow.rowType = RowTypes.headerRow;
	var mySubtitleRow = myTable.rows.nextItem(myTitleRow);
	mySubtitleRow.rowType = RowTypes.headerRow;
    //</fragment>
}

function myTeardown(){
}

//<fragment>
function ProcessDevice(){
    this.name = "ProcessDevice";
    this.xpath = "//device[@type = 'VCO']";	
    this.apply = function(myElement, myRuleProcessor){
            var myNewElement = myContainerElement.xmlElements.add(app.documents.item(0).xmlTags.item("Row"));
        return true;
    }		
}
//</fragment>

function AddTypeAttribute(){
    this.name = "AddTypeAttribute";
    this.xpath = "/devices/device/type";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            //Copies the contents of the "type" element to an 
            //attribute on the parent XML element ("device").
            myElement.parent.xmlAttributes.add("type", myElement.texts.item(0).contents);
        }
        return false; //Return false to let other XML rules process the element.
    }
}

function ProcessName(){
    this.name = "ProcessName";
    this.xpath = "//device[@type = 'VCO']/name";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            __skipChildren(myRuleProcessor);
            var myNewElement = myContainerElement.xmlElements.item(-1).xmlElements.add(app.documents.item(0).xmlTags.item("Column"));
            myElement.move(LocationOptions.atBeginning, myNewElement);
        }
        return true;
    }		
}
//The first matching "package" XML element creates the table element to hold
//all other matching XML elements.
function ProcessPackageOne(){
    this.name = "ProcessPackageOne";
    this.xpath = "//device[@type = 'VCO']/package[1]";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            __skipChildren(myRuleProcessor);
            var myNewElement = myContainerElement.xmlElements.item(-1).xmlElements.add(app.documents.item(0).xmlTags.item("Column"));
            myElement.move(LocationOptions.atBeginning, myContainerElement.xmlElements.item(-1).xmlElements.item(-1));
        }
        return true;
    }		
}
function ProcessPackage(){
    this.name = "ProcessPackage";
    this.xpath = "//device[@type = 'VCO']/package";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            __skipChildren(myRuleProcessor);
            var myNewElement = myElement.move(LocationOptions.atEnd, myContainerElement.xmlElements.item(-1).xmlElements.item(-1));
            myNewElement.insertTextAsContent("\r", XMLElementPosition.beforeElement);
        }
        return true;
    }		
}
function ProcessType(){
    this.name = "ProcessType";
    this.xpath = "//device[@type = 'VCO']/type";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            __skipChildren(myRuleProcessor);
            myElement.remove();
        }
        return true;
    }		
}
function ProcessPartNumber(){
    this.name = "ProcessPartNumber";
    this.xpath = "//device[@type = 'VCO']/part_number";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            __skipChildren(myRuleProcessor);
            var myNewElement = myContainerElement.xmlElements.item(-1).xmlElements.add(app.documents.item(0).xmlTags.item("Column"));
            myElement.move(LocationOptions.atBeginning, myNewElement);
        }
        return true;
    }		
}
function ProcessMaximumVoltage(){
    this.name = "ProcessMaximumVoltage";
    this.xpath = "//device[@type = 'VCO']/supply_voltage/maximum";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            insertTextAsContent(" to ", XMLElementPosition.beforeElement);
            insertTextAsContent(" volts ", XMLElementPosition.afterElement);
        }
        return true;
    }		
}
function ProcessSupplyVoltage(){
    this.name = "ProcessSupplyVoltage";
    this.xpath = "//device[@type = 'VCO']/supply_voltage";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            __processChildren(myRuleProcessor);
            var myNewElement = myContainerElement.xmlElements.item(-1).xmlElements.add(app.documents.item(0).xmlTags.item("Column"));
            myElement.move(LocationOptions.atBeginning, myNewElement);
        }
        return true;
    }		
}
function ProcessPrice(){
    this.name = "ProcessPrice";
    this.xpath = "//device[@type = 'VCO']/price";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            __skipChildren(myRuleProcessor);
            var myNewElement = myContainerElement.xmlElements.item(-1).xmlElements.add(app.documents.item(0).xmlTags.item("Column"));
            var myElement = myElement.move(LocationOptions.atBeginning, myNewElement);
            myElement.insertTextAsContent("$", XMLElementPosition.beforeElement);
        }
        return true;
    }		
}
function ProcessDescription(){
    this.name = "ProcessDescription";
    this.xpath = "//device[@type = 'VCO']/description";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            __skipChildren(myRuleProcessor);
            var myNewElement = myContainerElement.xmlElements.item(-1).xmlElements.add(app.documents.item(0).xmlTags.item("Column"));
            myElement.move(LocationOptions.atBeginning, myNewElement);
        }
        return true;
    }		
}
function myGetBounds(myDocument, myPage){
    var myPageWidth = myDocument.documentPreferences.pageWidth;
    var myPageHeight = myDocument.documentPreferences.pageHeight;
    if(myPage.side == PageSideOptions.leftHand){
        var myX2 = myPage.marginPreferences.left;
        var myX1 = myPage.marginPreferences.right;
    }
    else{
        var myX1 = myPage.marginPreferences.left;
        var myX2 = myPage.marginPreferences.right;
    }
    var myY1 = myPage.marginPreferences.top;
    var myX2 = myPageWidth - myX2;
    var myY2 = myPageHeight - myPage.marginPreferences.bottom;
    return [myY1, myX1, myY2, myX2];
}
function myGetScriptPath() {
    try {
        return app.activeScript;
    }
    catch(myError){
        return File(myError.fileName);
    }
}