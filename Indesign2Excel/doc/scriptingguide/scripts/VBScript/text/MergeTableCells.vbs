Rem MergeTableCells.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to merge cells in a table.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Rem Create an example document.
	Set myDocument = myInDesign.Documents.Add
	Set myPage = myDocument.Pages.Item(1)
	Rem Create a text frame on page 1.
	Set myTextFrame = myPage.TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage)
	myString = "Table" & vbCr
	myTextFrame.Contents = myString
	Set myStory = myDocument.Stories.Item(1)
	Set myTable = myStory.InsertionPoints.Item(-1).Tables.Add
	myTable.ColumnCount = 4
	myTable.BodyRowCount = 4
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myStory = myDocument.Stories.Item(1)
	Set myTable = myStory.Tables.Item(1)
	Rem Merge all of the cells in the first column.
	myTable.Cells.Item(1).Merge myTable.Columns.Item(1).Cells.Item(-1)
	Rem Convert column 2 into 2 cells (rather than 4).
	myTable.Columns.Item(2).Cells.Item(-1).Merge myTable.Columns.Item(2).Cells.Item(-2)
	myTable.Columns.Item(2).Cells.Item(1).Merge myTable.Columns.Item(2).Cells.Item(2)
	Rem Merge the last two cells in row 1.
	myTable.Rows.Item(1).Cells.Item(-1).Merge myTable.Rows.Item(1).Cells.Item(-1)
	Rem Merge the last two cells in row 3.
	myTable.Rows.Item(3).Cells.Item(-2).Merge myTable.Rows.Item(3).Cells.Item(-1)
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