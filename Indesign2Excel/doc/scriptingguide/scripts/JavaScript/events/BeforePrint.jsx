//BeforePrint.jsx
//An InDesign CS6 JavaScript
//
//Adds an event listener that performs a preflight check on a document before printing.
//If the preflight check fails, the script gives the user the opportunity to cancel the print job.
#targetengine "session"
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
}
function mySnippet(){
    //<fragment>
	var myEventListener = app.eventListeners.add("beforePrint", myBeforePrintHandler);
    //</fragment>
}
function myTeardown(){
}
//<fragment>
function myBeforePrintHandler(myEvent){
	//The parent of the event is the document.
	var myDocument = myEvent.parent;
	if(myPreflight(myDocument) == false){
		myEvent.stopPropagation();
		myEvent.preventDefault();
		alert("Document did not pass preflight check. Please fix the problems and try again.");
	}
	else{
		alert("Document passed preflight check. Ready to print.");
	}
	function myPreflight(myDocument){
		var myPreflightCheck = true;
		var myFontCheck = myCheckFonts(myDocument);
		var myGraphicsCheck = myCheckGraphics(myDocument);
		alert("Fonts: " + myFontCheck + "\r" + "Links:" + myGraphicsCheck);
		if((myFontCheck == false)||(myGraphicsCheck == false)){
			myPreflightCheck = false;
		}
		return myPreflightCheck;
	}
	function myCheckFonts(myDocument){
		var myFontCheck = true;
		for(var myCounter = 0; myCounter < myDocument.fonts.length; myCounter ++){
			if(myDocument.fonts.item(myCounter).status != FontStatus.installed){
				myFontCheck = false;
			}
		}
		return myFontCheck;
	}
	function myCheckGraphics(myDocument){
		var myGraphicsCheck = true;
		for(var myCounter = 0; myCounter < myDocument.allGraphics.length; myCounter++){
			var myGraphic = myDocument.allGraphics[myCounter];
			if(myGraphic.itemLink.status != LinkStatus.normal){
				myGraphicsCheck = false;
			}
		}
		return myGraphicsCheck;
	}
}
//</fragment>