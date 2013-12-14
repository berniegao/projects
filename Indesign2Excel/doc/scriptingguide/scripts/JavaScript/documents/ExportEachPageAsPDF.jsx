//ExportEachPageAsPDF.jsx
//An InDesign CS6 JavaScript
//
//Exports each page of an InDesign CS document as a separate PDF to 
//a selected folder using the current PDF export settings.
//Display a "choose folder" dialog box.

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
	myDocument.save(File(Folder.desktop + "/ExportEachPageAsPDF.indd"));
}
//</setup>
//<snippet>
function mySnippet(){
	//<fragment>
	var myPageName, myFilePath, myFile;
	var myDocument = app.documents.item(0);
	var myBaseName = myDocument.name;
	for(var myCounter = 0; myCounter < myDocument.pages.length; myCounter++){
		myPageName = myDocument.pages.item(myCounter).name;
		app.pdfExportPreferences.pageRange = myPageName;
		//The name of the exported files will be the base name + the 
		//page name + ".pdf". If the page name contains a colon (as it will 
		//if the document contains sections), then remove the colon.
		var myRegExp = /:/gi;
		myPageName = myPageName.replace(myRegExp, "_");
		myFilePath = Folder.desktop + "/" + myBaseName + "_" + myPageName + ".pdf";
		myFile = new File(myFilePath);
		myDocument.exportFile(ExportFormat.pdfType, myFile, false);
	}
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>