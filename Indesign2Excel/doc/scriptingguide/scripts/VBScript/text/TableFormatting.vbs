Rem TableFormatting.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to format table cells.
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
	Rem Add two colors.
	myAddColor myDocument, "DGC1_446a", idColorModel.idProcess, Array(0, 100, 0, 50)
	myAddColor myDocument, "DGC1_446b", idColorModel.idProcess, Array(100, 0, 50, 0)
	Rem Create a text frame on page 1.
	Set myTextFrame = myPage.TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage)
	Rem Fill the text frame with example text.
	myString = "Head 1" & vbTab & "Head 2" & vbTab & "Head 3" & vbCr & "1a" & vbTab 
	myString = myString & "1b" & vbTab & "1c" & vbCr & "2a" & vbTab & "2b" & vbTab 
	myString = myString & "2c" & vbCr & "3a" & vbTab & "3b" & vbTab & "3c"
	myTextFrame.contents = myString
	myTextFrame.Texts.Item(1).ConvertToTable
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myStory = myDocument.Stories.Item(1)
	Set myTable = myStory.Tables.Item(1)
	Rem Convert the first row to a header row.
	myTable.Rows.Item(1).RowType = idRowTypes.idHeaderRow
	Rem Use a reference to a swatch, rather than to a color.
	myTable.Rows.Item(1).FillColor = myDocument.Swatches.Item("DGC1_446b")
	myTable.Rows.Item(1).FillTint = 40
	myTable.Rows.Item(2).FillColor = myDocument.Swatches.Item("DGC1_446a")
	myTable.Rows.Item(2).FillTint = 40
	myTable.Rows.Item(3).FillColor = myDocument.Swatches.Item("DGC1_446a")
	myTable.Rows.Item(3).FillTint = 20
	myTable.Rows.Item(4).FillColor = myDocument.Swatches.Item("DGC1_446a")
	myTable.Rows.Item(4).FillTint = 40
	Rem Iterate through the cells to apply the cell stroke formatting.
	For myCounter = 1 To myTable.Cells.Count
		myTable.Cells.Item(myCounter).TopEdgeStrokeColor = myDocument.Swatches.Item("DGC1_446b")
		myTable.Cells.Item(myCounter).TopEdgeStrokeWeight = 1
		myTable.Cells.Item(myCounter).BottomEdgeStrokeColor = myDocument.Swatches.Item("DGC1_446b")
		myTable.Cells.Item(myCounter).BottomEdgeStrokeWeight = 1
		Rem When you set a cell stroke to a swatch, make certain that you also set the stroke weight.
		myTable.Cells.Item(myCounter).LeftEdgeStrokeColor = myDocument.Swatches.Item("None")
		myTable.Cells.Item(myCounter).LeftEdgeStrokeWeight = 0
		myTable.Cells.Item(myCounter).RightEdgeStrokeColor = myDocument.Swatches.Item("None")
		myTable.Cells.Item(myCounter).RightEdgeStrokeWeight = 0
	Next
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myAddColor(myDocument, myColorName, myColorModel, myColorValue)
    On Error Resume Next
    Set myColor = myDocument.Colors.Item(myColorName)
    If Err.Number <> 0 Then
        Set myColor = myDocument.Colors.Add
        myColor.Name = myColorName
    End If
    Err.Clear
    On Error GoTo 0
    myColor.Model = myColorModel
    myColor.ColorValue = myColorValue
    Set myAddColor = myColor
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