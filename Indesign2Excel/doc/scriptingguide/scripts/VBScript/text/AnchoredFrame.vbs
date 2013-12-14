Rem AnchoredFrame.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to create an anchored frame.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	set myPage = myDocument.Pages.Item(1)
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myTextFrame.Contents = idTextFrameContents.idPlaceholderText
	myTextFrame.Texts.Item(1).LeftIndent = 72
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	set myTextFrame = myPage.TextFrames.Item(1)
	Set myInsertionPoint = myTextFrame.Paragraphs.Item(1).InsertionPoints.Item(1)
	Set myInlineFrame = myInsertionPoint.TextFrames.Add
	Rem Recompose the text to make sure that getting the
	Rem geometric bounds of the inline graphic will work.
	myTextFrame.Texts.Item(1).Recompose
	Rem Get the geometric bounds of the inline frame.
	myBounds = myInlineFrame.GeometricBounds
	Rem Set the width and height of the inline frame. In this example, we'll
	Rem make the frame 24 points tall by 72 points wide.
	myArray = Array(myBounds(0), myBounds(1), myBounds(0) + 24, myBounds(1) + 72)
	myInlineFrame.GeometricBounds = myArray
	myInlineFrame.Contents = "This is an inline frame."
	Set myInsertionPoint = myTextFrame.Paragraphs.Item(2).InsertionPoints.Item(1)
	Set myAnchoredFrame = myInsertionPoint.TextFrames.Add
	Rem Recompose the text to make sure that getting the
	Rem geometric bounds of the inline graphic will work.
	myTextFrame.Texts.Item(1).Recompose
	Rem Get the geometric bounds of the inline frame.
	myBounds = myAnchoredFrame.GeometricBounds
	Rem Set the width and height of the inline frame. In this example, we'll
	Rem make the frame 24 points tall by 72 points wide.
	myArray = Array(myBounds(0), myBounds(1), myBounds(0) + 24, myBounds(1) + 72)
	myAnchoredFrame.GeometricBounds = myArray
	myAnchoredFrame.Contents = "This is an anchored frame."
	With myAnchoredFrame.AnchoredObjectSettings
		.AnchoredPosition = idAnchorPosition.idAnchored
		.AnchorPoint = idAnchorPoint.idTopLeftAnchor
		.HorizontalReferencePoint = idAnchoredRelativeTo.idAnchorLocation
		.HorizontalAlignment = idHorizontalAlignment.idLeftAlign
		.AnchorXoffset = 72
		.VerticalReferencePoint = idVerticallyRelativeTo.idLineBaseline
		.AnchorYoffset = 24
		.AnchorSpaceAbove = 24
	End With
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