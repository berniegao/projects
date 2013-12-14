Rem ReplaceTextWithGraphic.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Replaces each instance of a string with a specified graphic file.
Rem
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
	Rem Create a text frame on page 1.
	Set myTextFrame = myDocument.Pages.Item(1).TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myDocument.Pages.Item(1))
	Rem Fill the text frame with example text.
	myString = "This is an example paragraph." & vbCr & "XgraphicX" & vbCr & "This is a paragraph following an inline graphic." & vbCr & "XgraphicX" & vbCr & "This is another paragraph."
	myTextFrame.Contents = myString
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Rem Fill in a valid file name for a graphic on your system.
	myGraphicFileName = "c:\test.tif"
	mySearchString = "XgraphicX"
	myReplaceTextWithGraphic myInDesign, myDocument, mySearchString, myGraphicFileName
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem<fragment>
Function myReplaceTextWithGraphic(myInDesign, myDocument, myString, myGraphicFile)
	Rem Clear the find/change preferences.
	myInDesign.FindTextPreferences = idNothingEnum.idNothing
	myInDesign.ChangeTextPreferences = idNothingEnum.idNothing
	myInDesign.FindTextPreferences.FindWhat = "XgraphicX"
	Rem Search the document.
	Set myFoundItems = myDocument.FindText
	myInDesign.FindTextPreferences = idNothingEnum.idNothing
	myInDesign.ChangeTextPreferences = idNothingEnum.idNothing
	If myFoundItems.Count <> 0 Then
		For myCounter = myFoundItems.Count To 1 Step -1
			Rem A potential problem comes up here: what if the graphic is too big to fit on the page?
			Rem What if the text is overset? There are no foolproof solutions that can handle all of
			Rem the possible problems that can arise; your best bet is to adjust your scripts to deal
			Rem with the specific layouts of specific documents rather than to try to create a single
			Rem function that can handle all situations for all documents.
			Set myFoundItem = myFoundItems(myCounter)
			Err.Clear
			On Error Resume Next
			Set myStory = myFoundItem.ParentStory
			myIndex = myFoundItem.InsertionPoints.Item(1).Index
			myFoundItem.Contents = ""
			Set myFrame = myStory.InsertionPoints.Item(myIndex).Rectangles.Add
			myStory.Recompose
			myBounds = myFrame.GeometricBounds
			myX1 = myBounds(1)
			myY1 = myBounds(0)
			myX2 = myX1 + 72
			myY2 = myY1 + 72
			myFrame.GeometricBounds = Array(myY1, myX1, myY2, myX2)
			Set myInlineGraphic = myFrame.Place("c:\test.tif").Item(1)
			myFrame.Fit (idFitOptions.idProportionally)
			myFrame.Fit (idFitOptions.idFrameToContent)
			If Err.Number <> 0 Then
				MsgBox "Could not place the inline graphic!"
				Err.Clear
			End If
			On Error GoTo 0
		Next
	End If
End Function
Rem</fragment>
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