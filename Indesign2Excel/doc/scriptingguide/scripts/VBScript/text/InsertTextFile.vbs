Rem InsertTextFile.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Places a text file in text inside a text frame (without replacing the text).
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
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Rem Create a text frame.
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage)
	myTextFrame.Contents = "Inserted text file follows:" & vbCr
	Rem Place a text file at the end of the text.
	Rem Parameters for InsertionPoint.place():
	Rem File as string (file path),
	Rem [ShowingOptions as Boolean = False]
	Rem You'll have to fill in your own file path.
	myTextFrame.ParentStory.InsertionPoints.Item(-1).Place "c:\test.txt"
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