Rem SpecialCharacters.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to enter special characters in text.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Set myPage = myDocument.Pages.Item(1)
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myTextFrame = myPage.TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage)
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Item(1)
	Rem Entering special characters directly.
	myTextFrame.contents = "Registered trademark: ®" & vbCr & "Copyright: ©" & vbCr & "Trademark: ?" & vbCr & ""
	Rem Entering special characters by their Unicode glyph ID value ("&H" indicates a hexadecimal number):
	myTextFrame.ParentStory.InsertionPoints.Item(-1).contents = "Not equal to: " & ChrW(&H2260) & vbCr & "Square root: " & ChrW(&H221A) & vbCr & "Paragraph: " & ChrW(&HB6) & vbCr
	Rem Entering InDesign special characters by their enumerations:
	myTextFrame.ParentStory.InsertionPoints.Item(-1).contents = "Automatic page number marker:"
	myTextFrame.ParentStory.InsertionPoints.Item(-1).contents = idSpecialCharacters.idAutoPageNumber
	myTextFrame.ParentStory.InsertionPoints.Item(-1).contents = vbCr
	myTextFrame.ParentStory.InsertionPoints.Item(-1).contents = "Section symbol:"
	myTextFrame.ParentStory.InsertionPoints.Item(-1).contents = idSpecialCharacters.idSectionSymbol
	myTextFrame.ParentStory.InsertionPoints.Item(-1).contents = vbCr
	myTextFrame.ParentStory.InsertionPoints.Item(-1).contents = "En dash:"
	myTextFrame.ParentStory.InsertionPoints.Item(-1).contents = idSpecialCharacters.idEnDash
	myTextFrame.ParentStory.InsertionPoints.Item(-1).contents = vbCr
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