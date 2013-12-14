Rem HeaderAndFooterRows.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to add header and footer rows to a table.
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
	myTextFrame.TextFramePreferences.FirstBaselineOffset = idFirstBaseline.idLeadingOffset
	Rem Fill the text frame with placeholder text.
	myTextFrame.Contents = idTextFrameContents.idPlaceholderText
	myString = "Head 1" & vbTab & "Head 2" & vbTab & "Head 3" & vbCr & "1a" & vbTab & "1b" & vbTab & "1c" & vbCr & "2a" & vbTab & "2b" & vbTab & "2c" & vbCr & "3a" & vbTab & "3b" & vbTab & "3c" & vbCr & "Foot 1" & vbTab & "Foot 2" & vbTab & "Foot 3"
	myTextFrame.Contents = myString
	myTextFrame.Texts.Item(1).ConvertToTable
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Rem Create a text frame on page 1.
	Set myTable = myDocument.Stories.Item(1).Tables.Item(1)
	Rem Convert the first row to a header row.
	myTable.Rows.Item(1).RowType = idRowTypes.idHeaderRow
	Rem Convert the last row to a footer row.
	myTable.Rows.Item(-1).RowType = idRowTypes.idFooterRow
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