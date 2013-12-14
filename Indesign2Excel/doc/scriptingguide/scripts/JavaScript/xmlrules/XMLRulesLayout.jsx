//XMLRulesLayout.jsx
//An InDesign CS6 JavaScript
// 
//Shows how XML rules can be used to create layouts based on the content of XML elements.
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
	//Document set-up.
	var myDocument = app.documents.add();
	myDocument.xmlImportPreferences.allowTransform = false;
	myDocument.xmlImportPreferences.ignoreWhitespace = true;
	var myScriptPath = myGetScriptPath();
	myDocument.importXML(File(myScriptPath.path + "/XMLRulesExampleData.xml"));
	var myDocument = app.documents.item(0);
	myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myDocument.documentPreferences.pageHeight = 360;
	myDocument.documentPreferences.pageHeight = 360;
	myDocument.colors.add({model:ColorModel.process, colorValue:[0, 100, 100, 0], name:"Red"});
	myDocument.paragraphStyles.add({name:"DeviceName", pointSize:24, leading:24, spaceBefore:24, fillColor:"Red", spaceAfter:24, ruleBelow:true, ruleBelowOffset:12});
	myDocument.paragraphStyles.add({name:"DeviceType", pointSize:12, fontStyle:"Bold", leading:12, spaceAfter:12, fillColor:"Paper"});
	myDocument.paragraphStyles.add({name:"PartNumber", pointSize:12, fontStyle:"Bold", leading:12});
	myDocument.paragraphStyles.add({name:"Voltage", pointSize:10, leading:12});
	myDocument.paragraphStyles.add({name:"DevicePackage", pointSize:10, leading:12});
	myDocument.paragraphStyles.add({name:"Price", pointSize:10, leading:12, fontStyle:"Bold", spaceAfter:12});
}
function mySnippet(){
    var myDocument = app.documents.item(0);
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
function myTeardown(){
}
//<fragment>
//Creates a new text frame on each page.
function ProcessDevice(){
    this.name = "ProcessDevice";
    this.xpath = "/devices/device";	
    this.apply = function(myElement, myRuleProcessor){
        var myDocument = app.documents.item(0);
        with(myElement){
            insertTextAsContent("\r", XMLElementPosition.afterElement);
            if(myDocument.pages.item(0).textFrames.length == 0){
                myPage = myDocument.pages.item(0);
            }
            else{
                myPage = myDocument.pages.add();
            }
            var myBounds = myGetBounds(myDocument, myPage);
            var myTextFrame = placeIntoFrame(myPage, myBounds);
            myTextFrame.textFramePreferences.firstBaselineOffset = FirstBaseline.leadingOffset;
        }
        
        return true;
    }
}
//</fragment>
function ProcessName(){
    this.name = "ProcessName";
    this.xpath = "/devices/device/name";	
    this.apply = function(myElement, myRuleProcessor){
        var myDocument = app.documents.item(0);
        with(myElement){
            insertTextAsContent("\r", XMLElementPosition.afterElement);
            applyParagraphStyle(myDocument.paragraphStyles.item("DeviceName"));
        }
        return true;
    }
}
//Creates a new text frame at the top of the page to contain the "type" XML element.
function ProcessType(){
    this.name = "ProcessType";
    this.xpath = "/devices/device/type";	
    this.apply = function(myElement, myRuleProcessor){
        var myDocument = app.documents.item(0);
        with(myElement){
            var myBounds = myGetBounds(myDocument, myDocument.pages.item(-1));
            myBounds = [myBounds[0]-24, myBounds[1], myBounds[0], myBounds[2]];
            var myTextFrame = placeIntoFrame(myPage, myBounds);
            applyParagraphStyle(myDocument.paragraphStyles.item("DeviceType"));
            myTextFrame.textFramePreferences.insetSpacing = [6, 6, 6, 6];
            myTextFrame.fillColor = myDocument.swatches.item("Red")
        }
        return true;
    }
}
function ProcessPartNumber(){
    this.name = "ProcessPartNumber";
    this.xpath = "/devices/device/part_number";	
    this.apply = function(myElement, myRuleProcessor){
        var myDocument = app.documents.item(0);
        with(myElement){
            //Add static text at the beginning of the XML element.
            insertTextAsContent("Part Number: ", XMLElementPosition.beforeElement);
            //Add a return character at the end of the XML element.
            insertTextAsContent("\r", XMLElementPosition.afterElement);
            applyParagraphStyle(myDocument.paragraphStyles.item("PartNumber"));				
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
        var myDocument = app.documents.item(0);
        //Note the positions at which we insert the static text. If we use
        //XMLElementPosition.elementEnd, the static text will appear inside the XML element.
        //If we use XMLElementPosition.afterelement, the static text appears outside the
        //XML elment (as a text element of the parent element).
        with(myElement){
            //Add static text to the beginning of the voltage range.
            insertTextAsContent("Supply Voltage: From ", XMLElementPosition.beforeElement);				
            with(myElement.xmlElements.item(0)){
                insertTextAsContent(" to ", XMLElementPosition.afterElement);				
            }
            with(myElement.xmlElements.item(-1)){
                //Add static text to the beginning of the voltage range.
                insertTextAsContent(" volts", XMLElementPosition.afterElement);				
            }
            insertTextAsContent("\r", XMLElementPosition.afterElement);
            applyParagraphStyle(myDocument.paragraphStyles.item("Voltage"));
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
function ProcessPackageOne(){
    this.name = "ProcessPackageOne";
    this.xpath = "/devices/device/package[1]";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            insertTextAsContent("Package: ", XMLElementPosition.beforeElement);
        }
        //Return false to let other XML rules process the element.
        return false; 
    }
}
function ProcessPackages(){
    this.name = "ProcessPackages";
    this.xpath = "/devices/device/package";	
    this.apply = function(myElement, myRuleProcessor){
        var myDocument = app.documents.item(0);
        with(myElement){
            if(myElement.parent.xmlElements.nextItem(myElement).markupTag.name == "package"){
                insertTextAsContent(", ", XMLElementPosition.afterElement);
            }
            else{
                insertTextAsContent("\r", XMLElementPosition.afterElement);
                applyParagraphStyle(myDocument.paragraphStyles.item("DevicePackage"));
            }
        }
        return true;
    }
}
function ProcessPrice(){
    this.name = "ProcessPrice";
    this.xpath = "/devices/device/price";	
    this.apply = function(myElement, myRuleProcessor){
        var myDocument = app.documents.item(0);
        with(myElement){
            insertTextAsContent("Price: $", XMLElementPosition.beforeElement);
            insertTextAsContent("\r", XMLElementPosition.afterElement);
            applyParagraphStyle(myDocument.paragraphStyles.item("Price"));				
        }
        return true;
    }
}
function myGetBounds(myDocument, myPage){
    var myWidth = myDocument.documentPreferences.pageWidth;
    var myHeight = myDocument.documentPreferences.pageHeight;
    var myX1 = myPage.marginPreferences.left;
    var myY1 = myPage.marginPreferences.top;
    var myX2 = myWidth - myPage.marginPreferences.right;
    var myY2 = myHeight - myPage.marginPreferences.bottom;
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