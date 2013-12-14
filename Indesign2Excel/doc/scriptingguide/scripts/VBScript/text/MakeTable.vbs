Rem MakeTable.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to create a table.
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
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	Rem Fill the text frame with placeholder text.
	myString = "Table 1" & vbCr
	myString = myString & "Column 1" & vbTab & "Column 2" & vbTab & "Column 3" & vbCr & "1a" & vbTab & "1b" & vbTab & "1c" & vbCr & "2a" & vbTab & "2b" & vbTab & "2c" & vbCr & "3a" & vbTab & "3b" & vbTab & "3c" & vbCr
	myString = myString & "Table 2" & vbCr
	myString = myString & "Column 1,Column 2,Column 3;1a,1b,1c;2a,2b,2c;3a,3b,3c" & vbCr
	myString = myString & "Table 3" & vbCr
	myTextFrame.Contents = myString
	Set myStory = myTextFrame.ParentStory
	Set myStartCharacter = myStory.Paragraphs.Item(7).Characters.Item(1)
	Set myEndCharacter = myStory.Paragraphs.Item(7).Characters.Item(-2)
	Set myText = myStory.Texts.ItemByRange(myStartCharacter, myEndCharacter).Item(1)
	Rem The convertToTable method takes three parameters:
	Rem [ColumnSeparator as string]
	Rem [RowSeparator as string]
	Rem [NumberOfColumns as integer] (only used if the ColumnSeparator
	Rem and RowSeparator values are the same)
	Rem In the last paragraph in the story, columns are separated by commas
	Rem and rows are separated by semicolons, so we provide those characters
	Rem to the method as parameters.
	Set myTable = myText.ConvertToTable(",", ";")
	Set myStartCharacter = myStory.Paragraphs.Item(2).Characters.Item(1)
	Set myEndCharacter = myStory.Paragraphs.Item(5).Characters.Item(-2)
	Set myText = myStory.Texts.ItemByRange(myStartCharacter, myEndCharacter).Item(1)
	Rem In the second through the fifth paragraphs, colums are separated by
	Rem tabs and rows are separated by returns. These are the default delimiter
	Rem parameters, so we don't need to provide them to the method.
	Set myTable = myText.ConvertToTable
	Rem You can also explicitly add a table--you don't have to convert text to a table.
	Set myTable = myStory.InsertionPoints.Item(-1).Tables.Add
	myTable.ColumnCount = 3
	myTable.BodyRowCount = 3
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