Rem StoryAndTextFrame.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows the difference between referring to text via its
Rem text frame vs. its parent story.
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
	myTextFrame.GeometricBounds = Array(72, 72, 96, 288)
	Rem Fill the text frame with placeholder text.
	myTextFrame.Contents = idTextFrameContents.idPlaceholderText
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Item(1)
	Rem Now add text beyond the end of the text frame.
	myTextFrame.InsertionPoints.Item(-1).Contents = vbCr & "This is some overset text"
	myString = myTextFrame.Contents
	MsgBox ("The last paragraph in this alert should be ""This is some overset text"". Is it?" & vbCr & myString)
	myString = myTextFrame.ParentStory.Contents
	MsgBox ("The last paragraph in this alert should be ""This is some overset text"". Is it?" & vbCr & myString)
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function