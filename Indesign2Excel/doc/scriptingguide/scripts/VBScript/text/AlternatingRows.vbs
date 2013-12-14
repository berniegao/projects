Rem AlternatingRows.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to format table rows using alternating rows.
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
	Rem Add colors.
	myAddColor myDocument, "DGC1_446a", idColorModel.idProcess, Array(0, 100, 0, 50)
	myAddColor myDocument, "DGC1_446b", idColorModel.idProcess, Array(100, 0, 50, 0)
	Rem Create a text frame on page 1.
	Set myTextFrame = myPage.textFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage)
	Rem Populate the table.
	myString = "Head 1" & vbTab & "Head 2" & vbTab & "Head 3" & vbCr
	myString = myString & "1a" & vbTab & "1b" & vbTab & "1c" & vbCr 
	myString = myString & "2a" & vbTab & "2b" & vbTab & "2c" & vbCr 
	myString = myString & "3a" & vbTab & "3b" & vbTab & "3c" & vbcr
	myString = myString & "4a" & vbTab & "4b" & vbTab & "4c" & vbCr 
	myString = myString & "5a" & vbTab & "5b" & vbTab & "5c"
	myTextFrame.Contents = myString
	myTextFrame.texts.Item(1).convertToTable
	Set myTable = myDocument.stories.Item(1).tables.Item(1)
	Rem Convert the first row to a header row.
	myTable.rows.Item(1).rowType = idRowTypes.idHeaderRow
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myTable = myDocument.stories.Item(1).tables.Item(1)
	Rem Apply alternating fills to the table.
	myTable.alternatingFills = idAlternatingFillsTypes.idAlternatingRows
	myTable.startRowFillColor = myDocument.swatches.Item("DGC1_446a")
	myTable.startRowFillTint = 60
	myTable.endRowFillColor = myDocument.swatches.Item("DGC1_446b")
	myTable.endRowFillTint = 50
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myAddColor(myDocument, myColorName, myColorModel, myColorValue)
    On Error Resume Next
    Set myColor = myDocument.colors.Item(myColorName)
    If Err.Number <> 0 Then
        Set myColor = myDocument.colors.Add
    End If
    Err.Clear
    On Error GoTo 0
    myColor.Name = myColorName
    myColor.model = myColorModel
    myColor.colorValue = myColorValue
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