Rem SplitTableCells.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to split cells, column, and rows in a table.
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
	Rem Fill the text frame with example text.
	myString = "Table" & vbCr
	myTextFrame.contents = myString
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myStory = myDocument.Stories.Item(1)
	Set myTable = myStory.InsertionPoints.Item(-1).Tables.Add
	myTable.ColumnCount = 1
	myTable.BodyRowCount = 1
	myArray = myGetBounds(myDocument, myDocument.Pages.Item(1))
	myWidth = myArray(3) - myArray(1)
	myTable.Columns.Item(1).Width = myWidth
	myTable.Cells.Item(1).Split idHorizontalOrVertical.idHorizontal
	myTable.Columns.Item(1).Split idHorizontalOrVertical.idVertical
	myTable.Cells.Item(1).Split idHorizontalOrVertical.idVertical
	myTable.Rows.Item(-1).Split idHorizontalOrVertical.idHorizontal
	myTable.Cells.Item(-1).Split idHorizontalOrVertical.idVertical
	For myRowCounter = 1 To myTable.Rows.Count
		Set myRow = myTable.Rows.Item(myRowCounter)
		For myCellCounter = 1 To myRow.Cells.Count
			myString = "Row: " & myRowCounter & " Cell: " & myCellCounter
			myRow.Cells.Item(myCellCounter).contents = myString
		Next
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