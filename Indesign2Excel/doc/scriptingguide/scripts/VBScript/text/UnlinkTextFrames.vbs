Rem UnlinkTextFrames.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to unlink text frames.
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
	myDocument.ViewPreferences.RulerOrigin = idRulerOrigin.idPageOrigin
	Set myTextFrameA = myPage.TextFrames.Add
	myTextFrameA.geometricBounds = Array(72, 72, 144, 144)
	Set myTextFrameB = myPage.TextFrames.Add
	myTextFrameB.geometricBounds = Array(228, 72, 300, 144)
	Rem Link TextFrameA to TextFrameB using the nextTextFrame property.
	myTextFrameA.NextTextFrame = myTextFrameB
	myTextFrameA.Contents = idTextFrameContents.idPlaceholderText
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Rem Given two linked text frames on page 1...
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrameA = myPage.TextFrames.Item(-1)
	Rem Unlink text frame A.
	myTextFrameA.NextTextFrame = Nothing
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function