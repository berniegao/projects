//ForwardAxisMatching.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use XPath forward axis matching to process a
//series of like XML elements.
//You must copy the file "glue code.jsx" from the XML Rules folder (inside the Scripts
//folder inside your InDesign folder) to the folder containing this script, or provide a full
//path to the file in the next line.
#include "glue code.jsx";
main();
function main(){
	if (app.documents.length != 0){
		var myDocument = app.documents.item(0); 
		var myRuleSet = new Array (new ProcessDevice,
										new ProcessName,
										new ProcessType,
										new ProcessPartNumber,
										new ProcessSupplyVoltage,
										new PackageSeparator,
										new ProcessPackageType,
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
	function ProcessDevice(){
		this.name = "ProcessDevice";
		this.xpath = "/devices/device";	
		this.apply = function(myElement, myRuleProcessor){
			with(myElement){
				insertTextAsContent("\r", XMLElementPosition.afterElement);
			}
			return true;
		}
	}
	function ProcessName(){
		this.name = "ProcessName";
		this.xpath = "/devices/device/name";	
		this.apply = function(myElement, myRuleProcessor){
			with(myElement){
				insertTextAsContent("Device Name: ", XMLElementPosition.beforeElement);
				insertTextAsContent("\r", XMLElementPosition.afterElement);
			}
			return true;
		}
	}
	function ProcessType(){
		this.name = "ProcessType";
		this.xpath = "/devices/device/type";	
		this.apply = function(myElement, myRuleProcessor){
			with(myElement){
				insertTextAsContent("Circuit Type: ", XMLElementPosition.beforeElement);
				insertTextAsContent("\r", XMLElementPosition.afterElement);
			}
			return true;
		} 
	}
	function ProcessPartNumber(){
		this.name = "ProcessPartNumber";
		this.xpath = "/devices/device/part_number";	
		this.apply = function(myElement, myRuleProcessor){
			with(myElement){
				insertTextAsContent("Part Number: ", XMLElementPosition.beforeElement);
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
			//LocationOptions.atEnd, the static text will appear inside the XML element.
			//If we use LocationOptions.after, the static text appears outside the
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
				//Add a return at the end of the XML element.
				insertTextAsContent("\r", XMLElementPosition.afterElement);
			}
			return true;
		}
	}
	function PackageSeparator(){
		this.name = "PackageSeparator";
		this.xpath = "/devices/device/package/type[1]/following-sibling::*";	
		this.apply = function(myElement, myRuleProcessor){
			//If the package is not the last package type for the device, add
			//a comma preceding the package type.
			if(myElement.index != myElement.parent.xmlElements.item(-1).index){
				with(myElement){
					insertTextAsContent(", ", XMLElementPosition.beforeElement);
				}
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
	function ProcessPackages(){
		this.name = "ProcessPackages";
		this.xpath = "/devices/device/package";	
		this.apply = function(myElement, myRuleProcessor){
			with(myElement){
				insertTextAsContent("Package: ", XMLElementPosition.beforeElement);
				insertTextAsContent("\r", XMLElementPosition.afterElement);
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
				insertTextAsContent("\r", XMLElementPosition.afterElement);
			}
			return true;
		}
	}
}