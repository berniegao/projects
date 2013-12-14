Rem CopyUnformattedText.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to remove formatting from text as you move it to other locations in a document.
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
	myTextFrameA.geometricBounds = Array(72, 72, 144, 288)
	myTextFrameA.Contents = "This is a formatted string."
	myTextFrameA.ParentStory.Texts.Item(1).FontStyle = "Bold"
	Set myTextFrameB = myPage.TextFrames.Add
	myTextFrameB.geometricBounds = Array(228, 72, 300, 288)
	myTextFrameB.Contents = "This is the destination text frame. Text pasted here will retain its formatting."
	myTextFrameB.ParentStory.Texts.Item(1).FontStyle = "Italic"
	Rem Copy from one frame to another using a simple copy.
	myInDesign.Select myTextFrameA.Texts.Item(1)
	myInDesign.Copy
	myInDesign.Select myTextFrameB.ParentStory.InsertionPoints.Item(-1)
	myInDesign.Paste
	Rem Create another text frame on the active page.
	Set myTextFrameC = myPage.TextFrames.Add
	myTextFrameC.geometricBounds = Array(312, 72, 444, 288)
	myTextFrameC.Contents = "Text copied here will take on the formatting of the existing text."
	myTextFrameC.ParentStory.Texts.Item(1).FontStyle = "Italic"
	Rem Copy the unformatted string from text frame A to the end of text frame C (note
	Rem that this doesn't really copy the text it replicates the text string from one
	Rem text frame in another text frame):
	myTextFrameC.ParentStory.InsertionPoints.Item(-1).Contents = myTextFrameA.ParentStory.Texts.Item(1).Contents
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function