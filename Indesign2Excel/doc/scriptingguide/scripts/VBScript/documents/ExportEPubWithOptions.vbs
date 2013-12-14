Rem ExportEPubWithOptions.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Set EPub export options, then exports the active document as EPub.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myPage = myDocument.Pages.item(1)
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myTextFrame.Contents = "This is some example text."
	myDocument.save "C:\test\ExportAsEPubWithOptions.indd"
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Rem <fragment>
	Rem Sets EPub export options, then exports the active document as EPub.
	With myDocument.EPubExportPreferences
		Rem Apply image alignment to anchored object settings.
		.ApplyImageAlignmentToAnchoredObjectSettings = False
		
		Rem The unit of space.
		.SpaceUnit = idSpaceUnitType.idCssEm
		Rem The unit of margin.
		.MarginUnit = idSpaceUnitType.idCssEm
		
		Rem Bottom margin of the epub.
		.BottomMargin = 5
		Rem Left margin of the epub.
		.LeftMargin = 5
		Rem Right margin of the epub.
		.RightMargin = 5
		Rem Top margin of the epub.
		.TopMargin = 5
		
		Rem If true, break InDesign document into smaller pieces when generating epub.
		.BreakDocument = False
		
		Rem The bullet export option.
		.BulletExportOption = idBulletListExportOption.idAsText
				
		.CSSExportOption = idStyleSheetExportOption.idEmbeddedCSS
		.CustomImageSizeOption = idImageSizeOption.idSizeRelativeToPageWidth
		
		.EmbedFont = True
		
		.EpubCover = idEpubCover.idFirstPage
		Rem This will take effect only when EpubCover is set to idExternalImage.
		Rem .CoverImageFile = "C:\conver.jpg"
		
		.EpubPublisher = "Adobe Devtech"
		
		Rem The export order.
		.ExportOrder = idExportOrder.idLayoutOrder
		
		Rem If true, output foornoteimmediately after its paragraph.
		.FootnoteFollowParagraph = False
		
		Rem If true, export epub in XHTML format. Otherwise, in DTBook format.
		.Format = True
		
		.GIFOptionsInterlaced = True
		.GIFOptionsPalette = idGIFOptionsPalette.idWindowsPalette
		
		Rem The epub unique identifier, like ISBN.
		.Id = "123"
		
		Rem Ignore object level image conversion settings.
		.IgnoreObjectConversionSettings = True
		Rem Alignment applied to images.
		.ImageAlignment = idImageAlignmentType.idAlignCenter
		Rem The file format to use for converted images.
		Rem Valid only when copy optimized images and/or copy formatted images is true.
		.ImageConversion = idImageConversion.idAutomatic
		.ImageExportResolution = idImageResolution.idPpi150
		Rem Image page break settings to be used with objects.
		.ImagePageBreak = idImagePageBreakType.idPageBreakAfter
		Rem Space After applied to images.
		.ImageSpaceAfter = 2
		Rem Space Before applied to images.
		.ImageSpaceBefore = 2
		
		Rem If true, include CSS definition.
		.IncludeCSSDefinition = True
		Rem If true, output document metadata into epub.
		.IncludeDocumentMetadata = True
		
		.JPEGOptionsFormat = idJPEGOptionsFormat.idBaselineEncoding
		.JPEGOptionsQuality = idJPEGOptionsQuality.idHigh
		
		Rem The PNG compression level.
		.Level = 5
		
		.NumberedListExportOption = idNumberedListExportOption.idAsText
		
		Rem If true, format image based on layout appearence.
		.PreserveLayoutAppearence = True
		Rem If true, output local style override.
		.PreserveLocalOverride = True
		
		.StripSoftReturn = True
		
		Rem If true, image page break settings will be used in objects.
		.UseImagePageBreak = True
		
		Rem Use InDesign TOC style to generate epub TOC.
		.UseTocStyle = True
		
		.ViewDocumentAfterExport = False						
	End With
	myDocument.Export idExportFormat.idEPUB, "C:\test\ExportEPubWithOptions.epub", False
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myGetBounds(myDocument, myPage)
	myPageWidth = myDocument.DocumentPreferences.PageWidth
	myPageHeight = myDocument.DocumentPreferences.PageHeight
	If myPage.Side = idPageSideOptions.idLeftHand Then
		myX2 = myPage.MarginPreferences.Left
		myX1 = myPage.MarginPreferences.Right
	Else
		myX1 = myPage.MarginPreferences.Left
		myX2 = myPage.MarginPreferences.Right
	End If
	myY1 = myPage.marginPreferences.Top
	myX2 = myPageWidth - myX2
	myY2 = myPageHeight - myPage.MarginPreferences.Bottom
	myGetBounds =  Array(myY1, myX1, myY2, myX2)
End Function