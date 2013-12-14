// GreyscalePDF.jsx
// An InDesign CS6 JavaScript
// Shows how to export a gray scaled pdf
main();
function main()
{
        mySetup();
        mySnippet();
        myTeardown();
}

//<setup>
function mySetup()
{
        // Create a new document
        var myDocument = app.documents.add();
        // Set the property of myDocument
         with(myDocument.documentPreferences)
        {
                pagesPerDocument = 2;
                facingPages = false;
                var myPageWidth = pageWidth;
                var myPageHeight = pageHeight;
        }
        // Get a reference to the first page
        var myPage = myDocument.pages.item(0);
        // Create a text frame
        var myTextFrame = myPage.textFrames.add();
        // Specify the size and shape of the text frame.
        myTextFrame.geometricBounds = ["3p", "3p", "10p", "24p"];
        // Enter text in the text frame.
        myTextFrame.contents = "Hello, Adobe! ";
}
//</setup>

//<snippet>
function mySnippet()
{
        var myDocument = app.documents.item(0);
        var myStory = myDocument.stories.item(0);
        var myText = myStory.paragraphs.item(0);
        // Set the text size
        myText.pointSize = 30;
        // Set the text color
        myText.fillColor = myDocument.colors.add({name:"DGC1_664a", model:ColorModel.process, colorValue:[100, 0, 0, 0]});
        // Set watermark
        myDocument.watermarkPreferences.watermarkVisibility = true;
        myDocument.watermarkPreferences.watermarkDoPrint = true;
        myDocument.watermarkPreferences.watermarkDrawInBack = true;
        myDocument.watermarkPreferences.watermarkFontColor = UIColors.green;
        myDocument.watermarkPreferences.watermarkOpacity = 80;
        myDocument.watermarkPreferences.watermarkFontPointSize = 100;
        myDocument.watermarkPreferences.watermarkRotation = -45;
        myDocument.watermarkPreferences.watermarkText = "Adobe";
        myDocument.watermarkPreferences.watermarkFontStyle = "Bold";
        myDocument.watermarkPreferences.watermarkHorizontalPosition = WatermarkHorizontalPositionEnum.watermarkHCenter;
        // Set export preference of PDF
        with(app.pdfExportPreferences)
        {
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
                //<fragment>
                //set export pdf color to gray
                pdfColorSpace = PDFColorSpace.GRAY;
                //</fragment>
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
        // Export to pdf files
        var myFile = new File(Folder.desktop + "/GreyscalePDF.pdf");
        var result = "exported to: " + myFile.fullName;
        if (!myFile.parent.exists && !myFile.parent.create())
        {
                result = "Not exported. Unable to create the folder: " + myFile.parent.fullName;
        }
        else 
        {
                myDocument.exportFile(ExportFormat.pdfType, myFile);
        }
}
//</snippet>

//<teardown>
function myTeardown()
{
        
}
//</teardown>