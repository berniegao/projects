REM GreyscalePDF.vbs
REM An InDesign CS6 VBScript
REM 
REM Shows how to export a gray scaled pdf
main
Function main()
    REM Create a new document
    Set myInDesign = CreateObject("InDesign.Application.CS6")
    mySetup myInDesign
    mySnippet myInDesign
    myTeardown myInDesign
End Function
REM <setup>
Function mySetup(myInDesign)
    Set myDocument = myInDesign.Documents.Add
    With myDocument.documentPreferences
        .pagesPerDocument = 2
        .facingPages = false
        myPageWidth = myDocument.DocumentPreferences.PageWidth
        myPageHeight = myDocument.DocumentPreferences.PageHeight
    End With
    REM Get a reference to the first page
    Set myPage = myDocument.Pages.item(1)
    REM Create a text frame
    Set myTextFrame = myPage.TextFrames.Add
    REM Specify the size and shape of the text frame
    myTextFrame.GeometricBounds = Array("3p", "3p", "10p", "24p")
    REM Enter text in the text frame
    myTextFrame.Contents = "Hello, Adobe! "
End Function
REM </setup>
REM <snippet>
Function mySnippet(myInDesign)
    Set myDocument = myInDesign.Documents.item(1)
    Set myStory = myDocument.Stories.item(1)
    Set myText = myStory.Paragraphs.item(1)
    REM Set the text size
    myText.PointSize = 30
    REM Set the text color
    myText.FillColor = myDocument.Colors.Add
        myText.FillColor.Name = "DGC1_664a"
        myText.FillColor.Model = idColorModel.idProcess
        myText.FillColor.ColorValue = Array(100, 0, 0, 0)
    REM Set watermark
    With myDocument
        .watermarkPreferences.WatermarkVisibility = true
        .watermarkPreferences.WatermarkDoPrint = true
        .watermarkPreferences.WatermarkDrawInBack = true
        .watermarkPreferences.WatermarkFontColor = idUIColors.idGreen
        .watermarkPreferences.WatermarkOpacity = 80
        .watermarkPreferences.WatermarkFontPointSize = 100
        .watermarkPreferences.WatermarkRotation = -45
        .watermarkPreferences.WatermarkText = "Adobe"
        .watermarkPreferences.WatermarkFontStyle = "Bold"
        .watermarkPreferences.WatermarkHorizontalPosition = idWatermarkHorizontalPositionEnum.idWatermarkHCenter
    End With 
    REM set export preference of PDF
    With myInDesign.pdfExportPreferences
    Rem Basic PDF output options.
            .PageRange = idPageRange.idAllPages
            .AcrobatCompatibility = idAcrobatCompatibility.idAcrobat6
            .ExportGuidesAndGrids = False
            .ExportLayers = False
            .ExportNonprintingObjects = False
            .ExportReaderSpreads = False
            .GenerateThumbnails = False
            On Error Resume Next
            .IgnoreSpreadOverrides = False
            .IncludeICCProfiles = True
            On Error GoTo 0
            .IncludeBookmarks = True
            .IncludeHyperlinks = True
            .IncludeSlugWithPDF = False
            .IncludeStructure = False
            .InteractiveElementsOption = idInteractiveElementsOptions.idDoNotInclude
            Rem Setting subsetFontsBelow to zero disallows font subsetting
            Rem set subsetFontsBelow to some other value to use font subsetting.
            .SubsetFontsBelow = 0
            Rem Bitmap compression/sampling/quality options.
            .ColorBitmapCompression = idBitmapCompression.idZip
            .ColorBitmapQuality = idCompressionQuality.idEightBit
            .ColorBitmapSampling = idSampling.idNone
            Rem ThresholdToCompressColor is not needed in this example.
            Rem ColorBitmapSamplingDPI is not needed when ColorBitmapSampling is set
            Rem to none.
            .GrayscaleBitmapCompression = idBitmapCompression.idZip
            .GrayscaleBitmapQuality = idCompressionQuality.idEightBit
            .GrayscaleBitmapSampling = idSampling.idNone
            Rem ThresholdToCompressGray is not needed in this example.
            Rem GrayscaleBitmapSamplingDPI is not needed when GrayscaleBitmapSampling
            Rem is set to none.
            .MonochromeBitmapCompression = idBitmapCompression.idZip
            .MonochromeBitmapSampling = idSampling.idNone
            Rem ThresholdToCompressMonochrome is not needed in this example.
            Rem MonochromeBitmapSamplingDPI is not needed when MonochromeBitmapSampling
            Rem is set to none.
            Rem Other compression options.
            .CompressionType = idPDFCompressionType.idCompressNone
            .CompressTextAndLineArt = True
            .CropImagesToFrames = True
            .OptimizePDF = True
            Rem Printers marks and prepress options.
            Rem Get the bleed amounts from the document's bleed.
            set myDocumentPreferences = myDocument.DocumentPreferences
            .BleedBottom = myDocumentPreferences.DocumentBleedBottomOffset
            .BleedTop = myDocumentPreferences.DocumentBleedTopOffset
            .BleedInside = myDocumentPreferences.DocumentBleedInsideOrLeftOffset
            .BleedOutside = myDocumentPreferences.DocumentBleedOutsideOrRightOffset
            Rem If any bleed area is greater than zero, then print the bleed marks.
            If (.BleedBottom or .BleedTop or .BleedInside or .BleedOutside) Then
                .BleedMarks = True
            Else
                .BleedMarks = False
            End If
            .ColorBars = True
            Rem ColorTileSize and GrayTileSize are only used when
            Rem the export format is set to JPEG2000.
            Rem .ColorTileSize = 256
            Rem .GrayTileSize = 256
            .CropMarks = True
            .OmitBitmaps = False
            .OmitEPS = False
            .OmitPDF = False
            .PageInformationMarks = True
            .PageMarksOffset = "12 pt"
            Rem <fragment>
            Rem Set export pdf color to gray
            .PDFColorSpace = idPDFColorSpace.idGRAY
            Rem </fragment>
            .PDFMarkType = idMarkTypes.idDefault
            .PrinterMarkWeight = idPDFMarkWeight.idP125pt
            .RegistrationMarks = True
            On Error Resume Next
            .SimulateOverprint = False
            On Error GoTo 0
            .UseDocumentBleedWithPDF = True
            Rem Set viewPDF to true to open the PDF in Acrobat or Adobe Reader.
            .ViewPDF = False
        Rem .outputCondition = "Black & White"
    End With
    REM Export to pdf files
    Set filesys = CreateObject("Scripting.FileSystemObject")
    myFolderPath = "c:\TestFiles"
     If Not filesys.FolderExists(myFolderPath) Then
            filesys.CreateFolder(myFolderPath)
    End If
    myFile = myFolderPath & "\" & "GreyscalePDF.pdf"
    myDocument.Export idExportFormat.idPDFType, myFile
End Function
REM </snippet>
REM <teardown>
    Function myTeardown(myInDesign)
    End Function
REM </teardown>