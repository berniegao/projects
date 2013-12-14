Rem ExportPageRangeAsPDF.vbs
Rem An InDesign CS6 VBScript.
Rem
Rem Exports specified pages of an InDesign document to a PDF
Rem using the current PDF export settings.
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
    Rem Enter the names of the pages you want to export in the following line.
    Rem Note that the page name is not necessarily the index of the page in the
    Rem document (e.g., the first page of a document whose page numbering starts
    Rem with page 21 will be "21", not 1).
    myInDesign.PDFExportPreferences.PageRange = "1-3,6"
    Rem Fill in your own file path.
    myFile = "C:\ExportPageRangeAsPDF.pdf"
    myDocument.Export idExportFormat.idPDFType, myFile, False
    Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function