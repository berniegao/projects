Rem RotatedSpreads.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to rotate spreads in a document.
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
	myDocument.DocumentPreferences.PagesPerDocument = 6
	Set myMasterSpread = myDocument.MasterSpreads.Item(1)
	Rem Create a text frame with an automatic page number marker on each page in the master spread.
	for myCounter = 1 To myMasterSpread.Pages.Count
		Set myTextFrame = myMasterSpread.Pages.Item(myCounter).TextFrames.Add
		myTextFrame.GeometricBounds = myGetBounds(myDocument, myMasterSpread.Pages.Item(myCounter))
		myTextFrame.Contents = idSpecialCharacters.idAutoPageNumber
		myTextFrame.TextFramePreferences.VerticalJustification = idVerticalJustification.idCenterAlign
		myTextFrame.Texts.Item(1).PointSize = 72
		myTextFrame.Texts.Item(1).Justification = idJustification.idCenterAlign
	Next
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Rem Spread.transform (in: CoordinateSpaces , from:any, withMatrix:any, replacingCurrent:any, consideringRulerUnits: Boolean ) 
	Rem <fragment>
	Rem Given a document containing at least two spreads, rotate the second spread 90 degrees counterclockwise. 
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(, , , 90)
	myDocument.Spreads.Item(2).Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
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
   myGetBounds = Array(myY1, myX1, myY2, myX2)
End Function