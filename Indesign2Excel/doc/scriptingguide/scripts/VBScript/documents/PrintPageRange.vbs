Rem PrintPageRange.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Prints a page range from the active document.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.RulerOrigin = idRulerOrigin.idPageOrigin
	myPageHeight = myDocument.DocumentPreferences.PageHeight
	myPageWidth = myDocument.DocumentPreferences.PageWidth
	myDocument.DocumentPreferences.PagesPerDocument = 6
	myDocument.DocumentPreferences.FacingPages = False
	Set myMasterSpread = myDocument.MasterSpreads.Item(1)
	Rem If the master spread contains more than a single
	Rem page, delete the additional pages.
	If myMasterSpread.Pages.Count > 1 Then
		For myCounter = 1 To myMasterSpread.Pages.Count-1
			myMasterSpread.Pages.Item(1).Delete
		Next
	End If
	Set myTextFrame = myMasterSpread.Pages.Item(1).TextFrames.Add
	myTextFrame.GeometricBounds = Array(0, 0, myPageHeight, myPageWidth)
	myTextFrame.Contents = idSpecialCharacters.idAutoPageNumber
	myTextFrame.Paragraphs.Item(1).Justification = idJustification.idCenterAlign
	myTextFrame.Paragraphs.Item(1).PointSize = 72
    myTextFrame.TextFramePreferences.VerticalJustification = idVerticalJustification.idCenterAlign
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Rem The page range can be either idPageRange.idAllPages or a page range string.
	Rem A page number entered in the page range must correspond to a page
	Rem name in the document (i.e., not the page index). If the page name is
	Rem not found, InDesign will display an error message.
	myDocument.PrintPreferences.PageRange = "1-3, 6"
	myDocument.PrintOut false
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function