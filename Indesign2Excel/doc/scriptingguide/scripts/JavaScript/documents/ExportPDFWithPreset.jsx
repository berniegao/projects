//ExportPDFWithPreset.jsx
//An InDesign CS6 JavaScript
//
//Shows how to export as PDF using a given PDF export preset.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
//<setup>
function mySetup(){
	var myDocument = app.documents.add();
	with(myDocument.documentPreferences){
		pagesPerDocument = 6;
		facingPages = false;
		var myPageWidth = pageWidth;
		var myPageHeight = pageHeight;
	}
    //If the master spread contains more than a single
    //page, delete the additional pages.
    var myMasterSpread = myDocument.masterSpreads.item(0);
    for(var myCounter = 0; myCounter < myMasterSpread.pages.length; myCounter ++){
    	myMasterSpread.pages.item(0).remove();
    }
    var myTextFrame = myMasterSpread.pages.item(0).textFrames.add(
		{
			geometricBounds:[0, 0, myPageHeight, myPageWidth], 
			contents:SpecialCharacters.autoPageNumber
		}
	);
    myTextFrame.textFramePreferences.verticalJustification = VerticalJustification.centerAlign;
    myTextFrame.texts.item(0).pointSize = 72;
    myTextFrame.texts.item(0).justification = Justification.centerAlign;
	myDocument.save(File(Folder.desktop + "/ExportPDFWithPreset.indd"));
}
//</setup>
//<snippet>
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	//The document.export parameters are:
	//Format as (use either the ExportFormat.pdfType enumeration
	//or the string "Adobe PDF")
	//To as File
	//ShowingOptions as boolean (setting this option to true displays the 
	//PDF Export dialog box)
	//Using as PDF export preset (or a string that is the name of a 
	//PDF export preset)
	//The default PDF export preset names are surrounded by square breackets
	//(e.g., "[High Quality Print], [Press Quality], or [Smallest File Size]").
	var myPDFExportPreset = app.pdfExportPresets.item("[Press Quality]");
	myDocument.exportFile(
		ExportFormat.pdfType,
		File(Folder.desktop + "/ExportPDFWithPreset.pdf"),
		false, 
		myPDFExportPreset
	);
    //</fragment>
}
//</snippet>
//<teardown>
function myTeardown(){
}
//</teardown>
 
