Rem TextColors.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to apply colors to the fill and stroke of text.
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
	Rem Add two colors.
	myAddColor myDocument, "DGC1_446a", idColorModel.idProcess, Array(0, 100, 0, 50)
	myAddColor myDocument, "DGC1_446b", idColorModel.idProcess, Array(100, 0, 50, 0)
	Rem Create a text frame on page 1.
	Set myTextFrame = myPage.TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage)
	Rem Fill the text frame with example text.
	myTextFrame.contents = "Text" & vbCr & "Color"
	Set myText = myTextFrame.ParentStory.Paragraphs.Item(1)
	myText.PointSize = 72
	myText.Justification = idJustification.idCenterAlign
	Set myText = myTextFrame.ParentStory.Paragraphs.Item(2)
	myText.StrokeWeight = 3
	myText.PointSize = 144
	myText.Justification = idJustification.idCenterAlign
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myStory = myDocument.Stories.Item(1)
	Rem Apply a color to the fill of the text.
	Set myText = myStory.Paragraphs.Item(1)
	myText.FillColor = myDocument.Colors.Item("DGC1_446a")
	Rem Use the itemByRange method to apply the color to the stroke of the text.
	myText.StrokeColor = myDocument.Swatches.Item("DGC1_446b")
	Set myText = myStory.Paragraphs.Item(2)
	myText.FillColor = myDocument.Swatches.Item("DGC1_446b")
	myText.StrokeColor = myDocument.Swatches.Item("DGC1_446a")
	myText.StrokeWeight = 3
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myAddColor(myDocument, myColorName, myColorModel, myColorValue)
   On Error Resume Next
   Set myColor = myDocument.Colors.Item(myColorName)
   If Err.Number <> 0 Then
     Set myColor = myDocument.Colors.Add
     myColor.Name = myColorName
   End If
   Err.Clear
   On Error GoTo 0
   myColor.Model = myColorModel
   myColor.ColorValue = myColorValue
   Set myAddColor = myColor
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