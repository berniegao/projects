//ExportEPubWithOptions.jsx
//An InDesign CS6 JavaScript
//
//Sets EPub export options, then exports the active document as EPub.

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
		
	myDocument.save(File("C:/test/ExportEPubWithOptions.indd"));  
}
//</setup>

//<snippet>
function mySnippet(){
    var myDocument = app.documents.item(0);

    //<fragment>
    //Sets EPub export options, then exports the active document as EPub.
    with (myDocument.epubExportPreferences)
    {
        //Apply image alignment to anchored object settings.
        applyImageAlignmentToAnchoredObjectSettings = false;
        
        //The unit of space.
        spaceUnit = SpaceUnitType.CSS_EM;
        //The unit of margin.
        marginUnit = SpaceUnitType.CSS_EM;
        
        //Bottom margin of the epub.
        bottomMargin = 5;
        //Left margin of the epub.
        leftMargin = 5;
        //Right margin of the epub.
        rightMargin = 5;
        //Top margin of the epub.
        topMargin = 5;
        
        //If true, break InDesign document into smaller pieces when generating epub.
        breakDocument = false;
        //The name of paragraph style to break InDesign document.
        //paragraphStyleName = "";
        
        //The bullet export option.
        bulletExportOption = BulletListExportOption.AS_TEXT;        
        
        cssExportOption = StyleSheetExportOption.EMBEDDED_CSS;
        customImageSizeOption = ImageSizeOption.SIZE_RELATIVE_TO_PAGE_WIDTH;
               
        embedFont = true;
        epubCover = EpubCover.FIRST_PAGE;
		//This will take effect only when epubCover is set to EXTERNAL_IMAGE.
		//coverImageFile = "/c/cover.jpg";
		
        epubPublisher = "Adobe Devtech";
        
        //The export order.
        exportorder = ExportOrder.LAYOUT_ORDER;
        
        //If true, output footnote immediately after its paragraph.
        footnoteFollowParagraph = false;
        
        //If true, export epub in XHTML format. Otherwise, in DTBook format.
        format = true;
        
        gifOptionsInterlaced = true;
        gifOptionsPalette = GIFOptionsPalette.WINDOWS_PALETTE;
        
        //The epub unique identifier, like ISBN.
        id = "123";
        
        //Ignore object level image conversion settings.
        ignoreObjectConversionSettings = true;
        
        //Alignment applied to images.
        imageAlignment = ImageAlignmentType.ALIGN_CENTER;
        //The file format to use for converted images.
        //Valid only when copy optimized images and/or copy formatted images is true.
        imageConversion = ImageConversion.AUTOMATIC;
        imageExportResolution = ImageResolution.PPI_150;
        //Image page break settings to be used with objects.
        imagePageBreak = ImagePageBreakType.PAGE_BREAK_AFTER;
        //Space After applied to images.
        imageSpaceAfter = 2;
        //Space Before applied to images.
        imageSpaceBefore = 2;
        
        //If true, include CSS definition.
        includeCSSDefinition = true;
        //If true, output document metadata into epub.
        includeDocumentMetadata = true;
        
        jpegOptionsFormat = JPEGOptionsFormat.BASELINE_ENCODING;
        jpegOptionsQuality = JPEGOptionsQuality.HIGH;
        
        //The PNG compression level.
        level = 5;
        
        numberedListExportOption = NumberedListExportOption.AS_TEXT;	
        
        //If true, format image based on layout appearence.
        preserveLayoutAppearence = true;
        //If true, output local style override.
        preserveLocalOverride = true;
        
        stripSoftReturn = true;	
        //If true, image page break settings will be used in objects.
        useImagePageBreak = true;
        //Use InDesign TOC style to generate epub TOC.
        useTocStyle = true;
        
        viewDocumentAfterExport = false;
    }
	myDocument.exportFile(ExportFormat.EPUB, File("C:/test/ExportEPubWithOptions.epub"), false);
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