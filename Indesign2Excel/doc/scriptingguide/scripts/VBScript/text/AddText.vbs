Rem AddText.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Creates a text frame in an example document,
Rem enters text in the text frame, and then adds
Rem text at the end of the text frame.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myInDesign = CreateObject("InDesign.Application")
	Set myDocument = myInDesign.Documents.Add
	Rem Set the measurement units to points.
	myDocument.ViewPreferences.HorizontalMeasurementUnits = InDesign.idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = InDesign.idMeasurementUnits.idPoints
	Rem Create a text frame on the current page.
	set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myTextFrame.Contents = "This is some example text."
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	set myDocument = myInDesign.Documents.Item(1)
	Set myTextFrame = myDocument.TextFrames.Item(1)
	Rem Add text at the end of the text in the text frame.
	Rem To do this, we'll use the last insertion point in the story.
	Rem (vbCr is a return character, "&" concatenates two strings.)
	myNewText = "This is a new paragraph of example text."
	myTextFrame.ParentStory.InsertionPoints.Item(-1).Contents = vbCr & myNewText
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