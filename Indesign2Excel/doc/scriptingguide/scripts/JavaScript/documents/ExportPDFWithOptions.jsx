//ExportPDFWithOptions.jsx
//An InDesign CS6 JavaScript
//
//Sets PDF export options, then exports the active document as PDF.
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
	myDocument.save(File(Folder.desktop + "/ExportPDFWithOptions.indd"));
}
//</setup>
//<snippet>
function mySnippet(){
    //<fragment>
    //Sets PDF export options, then exports the active document as PDF.
    var myDocument = app.documents.item(0);
    with(app.pdfExportPreferences){
    	//Basic PDF output options.
    	pageRange = PageRange.allPages;
    	acrobatCompatibility = AcrobatCompatibility.acrobat6;
    	exportGuidesAndGrids = false;
    	exportLayers = false;
    	exportNonPrintingObjects = false;
    	exportReaderSpreads = false;
    	generateThumbnails = false;
    	try{
    		ignoreSpreadOverrides = false;
    	}
    	catch(e){}
    	includeBookmarks = true;
    	includeHyperlinks = true;
    	includeICCProfiles = true;
    	includeSlugWithPDF = false;
    	includeStructure = false;
    	interactiveElementsOption = InteractiveElementsOptions.doNotInclude;
    	//Setting subsetFontsBelow to zero disallows font subsetting;
    	//set subsetFontsBelow to some other value to use font subsetting.
    	subsetFontsBelow = 0;
    	//Bitmap compression/sampling/quality options.
    	colorBitmapCompression = BitmapCompression.zip;
    	colorBitmapQuality = CompressionQuality.eightBit;
    	colorBitmapSampling = Sampling.none;
    	//thresholdToCompressColor is not needed in this example.
    	//colorBitmapSamplingDPI is not needed when colorBitmapSampling is set to
        //none.
    	grayscaleBitmapCompression = BitmapCompression.zip;
    	grayscaleBitmapQuality = CompressionQuality.eightBit;
    	grayscaleBitmapSampling = Sampling.none;
    	//thresholdToCompressGray is not needed in this example.
    	//grayscaleBitmapSamplingDPI is not needed when grayscaleBitmapSampling is
        //set to none.
    	monochromeBitmapCompression = BitmapCompression.zip;
    	monochromeBitmapSampling = Sampling.none;
    	//thresholdToCompressMonochrome is not needed in this example.
    	//monochromeBitmapSamplingDPI is not needed when monochromeBitmapSampling
        //is set to none.
    	//Other compression options.
    	compressionType = PDFCompressionType.compressNone;
    	compressTextAndLineArt = true;
		cropImagesToFrames = true;
		optimizePDF = true;
    	//Printers marks and prepress options.
    	//Get the bleed amounts from the document's bleed.
        var myDocumentPreferences = myDocument.documentPreferences;
    	bleedBottom = myDocumentPreferences.documentBleedBottomOffset;
    	bleedTop = myDocumentPreferences.documentBleedTopOffset;
    	bleedInside = myDocumentPreferences.documentBleedInsideOrLeftOffset;
    	bleedOutside = myDocumentPreferences.documentBleedOutsideOrRightOffset;
    	//If any bleed area is greater than zero, then include bleed marks.
        if(bleedBottom && bleedTop && bleedInside && bleedInside){
    		bleedMarks = true;
    	}
    	else{
    		bleedMarks = false;
    	}
    	colorBars = true;
    	colorTileSize = 128;
    	grayTileSize = 128;
    	cropMarks = true;
    	omitBitmaps = false;
    	omitEPS = false;
    	omitPDF = false;
    	pageInformationMarks = true;
    	pageMarksOffset = "12 pt";
    	pdfColorSpace = PDFColorSpace.unchangedColorSpace;
    	//Default mark type.
    	pdfMarkType = 1147563124;
    	printerMarkWeight = PDFMarkWeight.p125pt;
    	registrationMarks = true;
    	try{
    		simulateOverprint = false;
    	}
    	catch(e){}
    	useDocumentBleedWithPDF = true;
    	//Set viewPDF to true to open the PDF in Acrobat or Adobe Reader.
    	viewPDF = false;
    }
    //Now export the document. You'll have to fill in your own file path.
	myDocument.exportFile(
		ExportFormat.pdfType,
		File(Folder.desktop + "/ExportPDFWithOptions.pdf"), 
		false
	);
	//</fragment>
}
//</snippet>
//<teardown>
function myTeardown(){
}
//</teardown>
 