Rem LinkTextFrames.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to link text frames.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Rem Set the measurement units to points.
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.RulerOrigin = idRulerOrigin.idPageOrigin
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrameA = myPage.TextFrames.Add
	myTextFrameA.geometricBounds = Array(72, 72, 144, 144)
	Set myTextFrameB = myPage.TextFrames.Add
	myTextFrameB.geometricBounds = Array(228, 72, 300, 144)
	Rem Add a page.
	Set myNewPage = myDocument.Pages.Add
	Rem Create another text frame on the new page.
	Set myTextFrameC = myNewPage.TextFrames.Add
	myTextFrameC.geometricBounds = Array(72, 72, 144, 144)
	Rem Link TextFrameA to TextFrameB using the nextTextFrame property.
	myTextFrameA.NextTextFrame = myTextFrameB
	Rem Link TextFrameC to TextFrameB using the previousTextFrame property.
	myTextFrameC.PreviousTextFrame = myTextFrameB
	Rem Fill the text frames with placeholder text.
	myTextFrameA.Contents = idTextFrameContents.idPlaceholderText
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function