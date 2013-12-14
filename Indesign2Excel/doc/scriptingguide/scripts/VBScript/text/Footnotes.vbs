Rem Footnotes.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to add footnotes.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Rem Create a text frame on page 1.
	Set myTextFrame = myDocument.Pages.Item(1).TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myDocument.Pages.Item(1))
	myTextFrame.TextFramePreferences.FirstBaselineOffset = idFirstBaseline.idLeadingOffset
	Rem Fill the text frame with placeholder text.
	myTextFrame.Contents = idTextFrameContents.idPlaceholderText
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	With myDocument.FootnoteOptions
		.SeparatorText = vbTab
		.MarkerPositioning = idFootnoteMarkerPositioning.idSuperscriptMarker
	End With
	Set myTextFrame = myDocument.Pages.Item(1).TextFrames.Item(1)
	Rem Add four footnotes at random locations in the story.
	For myCounter = 1 To 4
		myRandomNumber = CLng(myGetRandom(1, myTextFrame.ParentStory.Words.Count))
		Set myWord = myTextFrame.ParentStory.Words.Item(myRandomNumber)
		Set myFootnote = myWord.InsertionPoints.Item(-1).Footnotes.Add
		Rem Note: when you create a footnote, it contains text--the footnote marker
		Rem and the separator text (if any). If you try to set the text of the footnote
		Rem by setting the footnote contents, you will delete the marker. Instead, append
		Rem the footnote text, as shown below.
		myFootnote.InsertionPoints.Item(-1).Contents = "This is a footnote."
	Next
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem <fragment>
Rem This function gets a random number in the range myStart to myEnd.
Function myGetRandom(myStart, myEnd)
        Rem Here's how to generate a random number from a given range:
        Rem Int((upperbound - lowerbound + 1) * Rnd + lowerbound)
        myGetRandom = (myEnd - (myStart + 1)) * Rnd + myStart
End Function
Rem </fragment>
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