Rem ReplaceWord.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a text frame in an example document,
Rem enters text in the text frame, and then replaces
Rem a word in the frame with a different phrase.
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
   Set myPage = myDocument.Pages.Item(1)
   Set myTextFrame = myPage.TextFrames.Add
   Rem Set the bounds of the text frame.
   myTextFrame.geometricBounds = myGetBounds(myDocument, myDocument.Pages.Item(1))
   myTextFrame.contents = "This is some example text."
End Function
Function mySnippet(myInDesign)
   Rem <fragment>
   Set myDocument = myInDesign.Documents.Item(1)
   Set myPage = myDocument.Pages.Item(1)
   Set myTextFrame = myPage.TextFrames.Item(1)
   Rem Replace the third word with the phrase
   Rem "a little bit of".
   myTextFrame.ParentStory.Words.Item(3).contents = "a little bit of"
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