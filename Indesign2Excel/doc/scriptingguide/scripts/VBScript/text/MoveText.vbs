Rem MoveText.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Moves text from one location to another.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myInDesign = CreateObject("InDesign.Application")
	Rem Access the active document and page
	Set myDocument = myInDesign.ActiveDocument
	Set myPage = myInDesign.ActiveWindow.ActivePage
	Rem Set the bounds live area of the page.
	myBounds = myGetBounds(myDocument, myDocument.Pages.Item(1))
	myX1 = myBounds(1)
	myY1 = myBounds(0)
	myX2 = myBounds(3)
	myY2 = myBounds(2)
	myWidth = myX2 - myX1
	myHeight = myY2 - myY1
	Rem Create a series of text frames.
	Set myTextFrameA = myPage.TextFrames.Add
	myTextFrameA.geometricBounds = Array(myY1, myX1, myY1 + (myHeight / 2), myX1 + (myWidth / 2))
	myTextFrameA.Contents = "Before." & vbCr
	Set myTextFrameB = myPage.TextFrames.Add
	myTextFrameB.geometricBounds = Array(myY1, myX1 + (myWidth / 2), myY1 + (myHeight / 2), myX2)
	myTextFrameB.Contents = "After." & vbCr
	Set myTextFrameC = myPage.TextFrames.Add
	myTextFrameC.geometricBounds = Array(myY1 + (myHeight / 2), myX1, myY2, myX1 + (myWidth / 2))
	myTextFrameC.Contents = "Between words." & vbCr
	Set myTextFrameD = myPage.TextFrames.Add
	myTextFrameD.geometricBounds = Array(myY1 + (myHeight / 2), myX1 + (myWidth / 2), myY2, myX2)
	myTextFrameD.Contents = "Text to move:" & vbCr & "WordA" & vbCr & "WordB" & vbCr & "WordC" & vbCr
	Rem Move WordC between the words in TextFrameC.
	myTextFrameD.ParentStory.Paragraphs.Item(-1).Words.Item(1).Move idLocationOptions.idBefore, myTextFrameC.ParentStory.Paragraphs.Item(1).Words.Item(2)
	Rem Move WordB after the word in TextFrameB.
	myTextFrameD.ParentStory.Paragraphs.Item(-2).Words.Item(1).Move idLocationOptions.idAfter, myTextFrameB.ParentStory.Paragraphs.Item(1).Words.Item(1)
	Rem Move WordA to before the word in TextFrameA.
	myTextFrameD.ParentStory.Paragraphs.Item(-3).Words.Item(1).Move idLocationOptions.idBefore, myTextFrameA.ParentStory.Paragraphs.Item(1).Words.Item(1)
	Rem Note that moving text removes it from its original location.
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