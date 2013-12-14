//ExportEPub.jsx
//An InDesign CS6 JavaScript
//
// Exports the active document as EPub.

main();

function main(){
	mySetup();
	mySnippet();
	myTeardown();
}

//<setup>
function mySetup(){	
    var myDocument = app.documents.add();
    //Set the measurement units to points.
    myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
    myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;    
	var myPage = myDocument.pages.item(0);
	//Create a text frame on the first page.
    var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage), contents:"This is some example text."});
		
	myDocument.save(File("C:/test/ExportEPub.indd"));  
}
//</setup>

//<snippet>
function mySnippet(){
    //<fragment>
	var myDocument = app.documents.item(0);    
    //The document export parameters are:
    //Format as (use ExportFormat.EPUB)
    //To as File
    //ShowingOptions as boolean (setting this option to true displays the EPub Export dialog box)    
	myDocument.exportFile(ExportFormat.EPUB, File("C:/test/ExportEPub.epub"), false);
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
function myGetBounds(myDocument, myPage){
	var myPageWidth = myDocument.documentPreferences.pageWidth;
	var myPageHeight = myDocument.documentPreferences.pageHeight
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