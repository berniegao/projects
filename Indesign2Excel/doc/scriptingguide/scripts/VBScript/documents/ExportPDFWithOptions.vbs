Rem ExportPDFWithOptions.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets PDF export options and exports a document as PDF.
main
Function main()
    Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	With myDocument.DocumentPreferences
		.PagesPerDocument = 6
		.FacingPages = False
		myPageWidth = .PageWidth
		myPageHeight = .PageHeight
	End With
    Rem If the master spread contains more than a single
    Rem page, delete the additional pages.
    Set myMasterSpread = myDocument.MasterSpreads.Item(1)
    For myCounter = 1 To myMasterSpread.Pages.Count -1
    	myMasterSpread.Pages.Item(1).Delete
    Next
	Set myTextFrame = myMasterSpread.Pages.Item(1).TextFrames.Add
	myTextFrame.GeometricBounds = Array(0, 0, myPageHeight, myPageWidth)
	myTextFrame.Contents = idSpecialCharacters.idAutoPageNumber
    myTextFrame.TextFramePreferences.verticalJustification = idVerticalJustification.idCenterAlign
    myTextFrame.Texts.item(1).pointSize = 72
    myTextFrame.Texts.item(1).justification = idJustification.idCenterAlign
    Rem You'll have to fill in your own file path.
    myDocument.save "C:\ExportAsPDF.indd"
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	With myInDesign.PDFExportPreferences
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
		.PDFColorSpace = idPDFColorSpace.idUnchangedColorSpace
		.PDFMarkType = idMarkTypes.idDefault
		.PrinterMarkWeight = idPDFMarkWeight.idP125pt
		.RegistrationMarks = True
		On Error Resume Next
		.SimulateOverprint = False
		On Error GoTo 0
		.UseDocumentBleedWithPDF = True
		Rem Set viewPDF to true to open the PDF in Acrobat or Adobe Reader.
		.ViewPDF = False
	End With
	Rem Now export the document. You'll have to fill in your own file path.
	myDocument.Export idExportFormat.idPDFType, "C:\ExportPDFWithOptions.pdf", False
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function 