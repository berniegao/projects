Rem MoveTextBetweenDocuments.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Moves formatted text from one document to another using import/export.
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
	Rem Create the source document
	Set mySourceDocument = myInDesign.Documents.Add
	Set mySourcePage = mySourceDocument.Pages.Item(1)
	Set mySourceTextFrame = mySourcePage.TextFrames.Add
	mySourceTextFrame.geometricBounds = myGetBounds(mySourceDocument, mySourcePage)
	mySourceTextFrame.Contents = "This is the source text." & vbCr & "This text is not the source text."
	Set mySourceParagraph = mySourceTextFrame.ParentStory.Paragraphs.Item(1)
	mySourceParagraph.PointSize = 24	
	
	Rem Create the target document.
	Set myTargetDocument = myInDesign.Documents.Add
	Set myTargetPage = myTargetDocument.Pages.Item(1)
	Set myTargetTextFrame = myTargetPage.TextFrames.Add
	myTargetTextFrame.GeometricBounds = myGetBounds(myTargetDocument, myTargetPage)
	myTargetTextFrame.Contents = "This is the target text. Insert the source text before this paragraph." & vbCr

	Rem Move the text from the source document to the target document.
    Rem This deletes the text from the source document.
    mySourceParagraph.Move idLocationOptions.idBefore, myTargetTextFrame.InsertionPoints.Item(1)
    
    Rem To duplicate (rather than move) the text, use the following:
	Rem mySourceParagraph.Duplicate idLocationOptions.idBefore, myTargetTextFrame.InsertionPoints.Item(1)
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