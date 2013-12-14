Rem TextIterationRight.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to iterate through text.
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
	Set myTextFrame = myPage.TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage)
	myString = "Paragraph 1." & vbCr & "Delete this paragraph." & vbCr & "Paragraph 2." & vbCr & "Paragraph 3." & vbCr & "Paragraph 4." & vbCr & "Paragraph 5." & vbCr & "Delete this paragraph." & vbCr & "Paragraph 6." & vbCr
	myTextFrame.contents = myString
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myStory = myDocument.Stories.Item(1)
	Rem The following for loop will format all of the paragraphs by iterating
	Rem backwards through the paragraphs in the story.
	For myCounter = myStory.Paragraphs.Count To 1 Step -1
		If myStory.Paragraphs.Item(myCounter).Words.Item(1).contents = "Delete" Then
			myStory.Paragraphs.Item(myCounter).Delete
		Else
			myStory.Paragraphs.Item(myCounter).PointSize = 24
		End If
	Next
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