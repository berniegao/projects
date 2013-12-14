Rem ExportAsEPS.vbs
Rem An InDesign CS6 VBScript.
Rem
Rem Exports the pages of the active document as a series of EPS files.
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
		.PagesPerDocument = 1
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
End Function
Function mySnippet(myInDesign)
    Rem <fragment>
    Set myDocument = myInDesign.Documents.Item(1)
    Rem You'll have to fill in your own file path.
    myFile = "C:\ExportAsEPS.eps"
    myDocument.Export idExportFormat.idEPSType, myFile, False
    Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function 
