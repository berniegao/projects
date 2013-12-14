Rem ExportPDF.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Exports a document as PDF.
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
	Rem The Document.Export parameters are:
	Rem Format: use the idExportFormat.idPDFType 
	Rem To: a file path as a string
	Rem ShowingOptions: boolean (setting this option to 
	Rem true displays the PDF Export dialog box)
	Rem Using: PDF export preset (or a string that is 
	Rem the name of a PDF expor preset)
	Rem You'll have to fill in your own file path.
	myDocument.Export idExportFormat.idPDFType, "C:\ExportPDF.pdf", False
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function