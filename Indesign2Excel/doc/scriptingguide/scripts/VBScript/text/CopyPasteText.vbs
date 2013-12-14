Rem CopyPasteText.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Copies text from one document and pastes it into another.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocumentA = myInDesign.Documents.Add
	Set myPageA = myDocumentA.Pages.Item(1)
	Set myTextFrameA = myPageA.TextFrames.Add
	myTextFrameA.GeometricBounds = myGetBounds(myDocumentA, myPageA)
	myTextFrameA.Contents = "Example text." & vbCr

	Set myDocumentB = myInDesign.Documents.Add
	Set myPageB = myDocumentB.Pages.Item(1)
	Set myTextFrameB = myPageB.TextFrames.Add
	myTextFrameB.GeometricBounds = myGetBounds(myDocumentB, myPageB)

	Rem Make document A the active document.
	myInDesign.ActiveDocument = myDocumentA
	Rem Select the text.
	myInDesign.Select myTextFrameA.ParentStory.Texts.Item(1)
	myInDesign.Copy

	Rem Make document B the active document.
	myInDesign.ActiveDocument = myDocumentB
	Rem Select the insertion point at which you want to paste the text.
	myInDesign.Select myTextFrameB.ParentStory.InsertionPoints.Item(1)
	myInDesign.Paste
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