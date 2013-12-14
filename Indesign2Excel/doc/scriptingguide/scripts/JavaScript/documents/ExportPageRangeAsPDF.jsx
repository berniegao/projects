//ExportPageRangeAsPDF.jsx
//an InDesign CS6 JavaScript
//
//Exports specified pages of an InDesign CS6 document to a PDF
//using the current PDF export settings.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
//<setup>
function mySetup(){
    myDocument = app.documents.add();
    with(myDocument.documentPreferences){
    	pagesPerDocument = 12;
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
	myDocument.save(File(Folder.desktop + "/ExportPageRangeAsPDF.indd"));
}
//</setup>
//<snippet>
function mySnippet(){
    //<fragment>
    //Exports specified pages of an InDesign CS6 document to a PDF
    //using the current PDF export settings.
    var myDocument = app.documents.item(0);
    with(app.pdfExportPreferences){
    //Enter the names of the pages you want to export in the following line.
    //Note that the page name is not necessarily the index of the page in the
    //document (e.g., the first page of a document whose page numbering starts
    //with page 21 will be "21", not 1).
    	pageRange = "1, 3-6, 7, 9-11, 12";
    }
    myDocument.exportFile(
		ExportFormat.pdfType,
        File(Folder.desktop + "/ExportPageRangeAsPDF.pdf"),
        false
	);
    //</fragment>
}
//</snippet>
//<teardown>
function myTeardown(){
}
//</teardown>
 