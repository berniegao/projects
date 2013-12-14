Rem ReplaceText.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a text frame in an example document,
Rem enters text in the text frame, and then replaces
Rem the text in the second paragraph.
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
	Rem Create a text frame on the current page.
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.geometricBounds = Array(72, 72, 288, 288)
	myTextFrame.Contents = "Paragraph 1." & vbCr & "Paragraph 2." & vbCr & "Paragraph 3." & vbCr
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Rem Replace the text in the second paragraph without replacing
	Rem the return character at the end of the paragraph. To do this,
	Rem we'll use the ItemByRange method.
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Item(1)
	Set myStartCharacter = myTextFrame.ParentStory.Paragraphs.Item(2).Characters.Item(1)
	Set myEndCharacter = myTextFrame.ParentStory.Paragraphs.Item(2).Characters.Item(-2)
	myTextFrame.Texts.ItemByRange(myStartCharacter, myEndCharacter).Item(1).Contents = "This text replaces the text in paragraph 2."
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function