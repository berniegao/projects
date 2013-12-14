Rem ExportHTML.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Exports the text in a document as HTML by traversing the stories in
Rem the document and writing the text to disk as HTML markup.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Rem Create example paragraph styles
	Set myHeading1Style = myMakeParagraphStyle(myDocument, "heading1")
	myHeading1Style.PointSize = 24
	Set myHeading2Style = myMakeParagraphStyle(myDocument, "heading2")
	myHeading2Style.PointSize = 16
	Set myHeading3Style = myMakeParagraphStyle(myDocument, "heading3")
	myHeading3Style.PointSize = 12
	Set myBodyTextStyle = myMakeParagraphStyle(myDocument, "body_text")
	myBodyTextStyle.PointSize = 10
	Rem Create a text frame on page 1.
	Set myTextFrame = myDocument.Pages.Item(1).TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myDocument.Pages.Item(1))
	Rem Fill the text frame with placeholder text.
	myString = "Heading 1" & vbCr
	myString = myString & "This is a normal paragraph." & vbCr
	myString = myString & "Heading 2" & vbCr
	myString = myString & "This is another normal paragraph." & vbCr
	myString = myString & "Heading 3" & vbCr
	myString = myString & "This is yet another normal paragraph." & vbCr
	myString = myString & "Column 1" & vbTab & "Column 2" & vbTab & "Column 3" & vbCr
	myString = myString & "1a" & vbTab & "1b" & vbTab & "1c" & vbCr
	myString = myString & "2a" & vbTab & "2b" & vbTab & "2c" & vbCr
	myString = myString & "3a" & vbTab & "3b" & vbTab & "3c" & vbCr
	myTextFrame.Contents = myString
	myTextFrame.ParentStory.Paragraphs.Item(1).ApplyParagraphStyle myHeading1Style
	myTextFrame.ParentStory.Paragraphs.Item(2).ApplyParagraphStyle myBodyTextStyle
	myTextFrame.ParentStory.Paragraphs.Item(3).ApplyParagraphStyle myHeading2Style
	myTextFrame.ParentStory.Paragraphs.Item(4).ApplyParagraphStyle myBodyTextStyle
	myTextFrame.ParentStory.Paragraphs.Item(5).ApplyParagraphStyle myHeading3Style
	myTextFrame.ParentStory.Paragraphs.Item(6).ApplyParagraphStyle myBodyTextStyle
	Set myStartCharacter = myTextFrame.ParentStory.Paragraphs.Item(7).Characters.Item(1)
	Set myEndCharacter = myTextFrame.ParentStory.Characters.Item(-2)
	Set myText = myTextFrame.ParentStory.Texts.ItemByRange(myStartCharacter, myEndCharacter).Item(1)
	myText.ConvertToTable
	Set myTable = myTextFrame.ParentStory.Tables.Item(1)
	Set myRow = myTable.Rows.Item(1)
	myRow.RowType = idRowTypes.idHeaderRow
	Set myCreateExampleDocument = myDocument
End Function
Function mySnippet(myInDesign)
   Rem <fragment>
   Set myDocument = myInDesign.Documents.Item(1)
   Rem Use the myStyleToTagMapping dictionary to set up your paragraph style to tag mapping.
   Set myStyleToTagMapping = CreateObject("Scripting.Dictionary")
   Rem For each style to tag mapping, add a new item to the dictionary.
   myStyleToTagMapping.Add "body_text", "p"
   myStyleToTagMapping.Add "heading1", "h1"
   myStyleToTagMapping.Add "heading2", "h2"
   myStyleToTagMapping.Add "heading3", "h3"
   Rem End of style to tag mapping.
   If myDocument.Stories.Count <> 0 Then
     Rem Open a new text file.
     Set myDialog = CreateObject("UserAccounts.CommonDialog")
     myDialog.Filter = "HTML Files|*.html|All Files|*.*"
     myDialog.FilterIndex = 1
     myDialog.InitialDir = "C:\"
     myResult = myDialog.ShowOpen
     Rem If the user clicked the Cancel button, the result is null.
     If myResult = True Then
         myTextFileName = myDialog.FileName
         Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
         Set myTextFile = myFileSystemObject.CreateTextFile(myTextFileName)
         For myCounter = 1 To myInDesign.Documents.Item(1).Stories.Count
             Set myStory = myDocument.Stories.Item(myCounter)
             For myParagraphCounter = 1 To myStory.Paragraphs.Count
                 Set myParagraph = myStory.Paragraphs.Item(myParagraphCounter)
                 If myParagraph.Tables.Count = 0 Then
                     If myParagraph.TextStyleRanges.Count = 1 Then
                         Rem If the paragraph is a simple paragraph--no tables, no local formatting--then
                         Rem simply export the text of the pararaph with the appropriate tag.
                         myTag = myStyleToTagMapping.Item(myParagraph.AppliedParagraphStyle.Name)
                         Rem If the tag comes back empty, map it to the basic paragraph tag.
                         If myTag = "" Then
                             myTag = "p"
                         End If
                         myStartTag = "<" & myTag & ">"
                         myEndTag = "</" & myTag & ">"
                         Rem If the paragraph is not the last paragraph in the story,
                         Rem omit the return character.
                         If myParagraph.Characters.Item(-1).Contents = vbCr Then
                             myString = myParagraph.Texts.ItemByRange(myParagraph.Characters.Item(1), myParagraph.Characters.Item(-2)).Item(1).Contents
                         Else
                             myString = myParagraph.Contents
                         End If
                         Rem Write the paragraphs' text to the text file.
                         myTextFile.WriteLine myStartTag & myString & myEndTag
                     Else
                         Rem Handle text style range export by iterating through the text style ranges in the paragraph..
                         For myRangeCounter = 1 To myParagraph.TextStyleRanges.Length
                             myTextStyleRange = myParagraph.TextStyleRanges.Item(myRangeCounter)
                             If myTextStyleRange.Characters.Item(-1) = vbCr Then
                                 myString = myTextStyleRange.Texts.ItemByRange(myTextStyleRange.Characters.Item(1), myTextStyleRange.Characters.Item(-2)).Item(1).Contents
                             Else
                                 myString = myTextStyleRange.Contents
                             End If
                             Select Case myTextStyleRange.FontStyle
                                 Case "Bold":
                                     myString = "<b>" & myString & "</b>"
                                 Case "Italic":
                                     myString = "<i>" & myString & "</i>"
                             End Select
                             myTextFile.write myString
                         Next
                         myTextFile.write vbCr
                     End If
                 Else
                     Rem Handle table export (assumes that there is only one table per paragraph,
                     Rem and that the table is in the paragraph by itself).
                     Set myTable = myParagraph.Tables.Item(1)
                     myTextFile.write "<table border = 1>"
                     For myRowCounter = 1 To myTable.Rows.Count
                         myTextFile.write "<tr>"
                         For myColumnCounter = 1 To myTable.Columns.Count
                             If myRowCounter = 1 Then
                                 myString = "<th>" & myTable.Rows.Item(myRowCounter).Cells.Item(myColumnCounter).Texts.Item(1).Contents & "</th>"
                             Else
                                 myString = "<td>" & myTable.Rows.Item(myRowCounter).Cells.Item(myColumnCounter).Texts.Item(1).Contents & "</td>"
                             End If
                             myTextFile.write myString
                         Next
                         myTextFile.WriteLine "</tr>"
                     Next
                     myTextFile.WriteLine "</table>"
                 End If
             Next
             Rem Close the text file.
             myTextFile.Close
         Next
     End If
   End If
   Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myMakeParagraphStyle(myDocument, myStyleName)
   On Error Resume Next
   Set myStyle = myDocument.ParagraphStyles.Item(myStyleName)
      If Err.Number <> 0 Then
         Set myStyle = myDocument.ParagraphStyles.Add
         myStyle.Name = myStyleName
      End If
      Err.Clear
      On Error GoTo 0
   Set myMakeParagraphStyle = myStyle
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
