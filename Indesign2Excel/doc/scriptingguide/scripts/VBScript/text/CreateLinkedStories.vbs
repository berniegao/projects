Rem CreateLinkiedStories.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a text frame containing the parent story in an example document,
Rem and then creates two text frames than link the parent story.
Rem Modify the parent story and update the text frames that link the parent story.

main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.viewPreferences.horizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.viewPreferences.verticalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.DocumentPreferences.FacingPages = False
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.pages.item(1)
	
	myGeoBounds = myGetBounds(myDocument, myPage)
	originX = myGeoBounds(0)
	originY = myGeoBounds(1)

	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = Array (originY, originX, 100, 200)	
	myTextFrame.Contents = "This is some example text."
	
	With myDocument.LinkedStoryOptions
		.RemoveForcedLineBreaks = True
		.UpdateWhileSaving = True
		.WarnOnUpdateOfEditedStory = True
	End With
	
	Set childTextFrame1 = myPage.TextFrames.Add
	childTextFrame1.GeometricBounds = Array (105, originX, 100 - originY + 105, 200)
	
	Set childTextFrame2 = myPage.TextFrames.Add
	childTextFrame2.GeometricBounds = Array (100 - originY + 110, originX, 310 - originY * 2, 200)
	
	childTextFrame1.PlaceAndLink myTextFrame.ParentStory, False
	childTextFrame2.PlaceAndLink myTextFrame.ParentStory, False
	
	Set newPage = myDocument.Pages.Add
	newPage.PlaceAndLink myTextFrame.ParentStory, Array(originY, originX), myDocument.ActiveLayer, False
	
	Set newSpread = myDocument.Spreads.Add
	newSpread.PlaceAndLink myTextFrame.ParentStory, Array(originY, originX), myDocument.ActiveLayer, False
	
	
	
	myTextFrame.ParentStory.InsertionPoints.Item(-1).Contents = vbcr & "This is a new paragraph of example text."
	
	Set links = myDocument.Links
	
	For counter = links.Count To 1 Step -1
		Set link = links.Item(counter)
		If (Len(link.FilePath) = 0) Then
			link.EditOriginal
			Set selection = myInDesign.Selection
			Set linkSource = selection.Item(1)			
			If (linkSource = myTextFrame And Link.Status = idLinkStatus.idLinkOutOfDate) Then
				link.Update
			End If
		End If
	Next
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
