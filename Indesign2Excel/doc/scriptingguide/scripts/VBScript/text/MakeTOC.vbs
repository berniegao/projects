Rem MakeTOC.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to create a table of contents.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Set myPage = myDocument.Pages.Add
	Set mySection = myDocument.Sections.Add(myPage)
	mySection.ContinueNumbering = False
	mySection.PageNumberStart = 2
	myDocument.Sections.Item(1).PageNumberStyle = idPageNumberStyle.idLowerRoman
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Rem Create some paragraph styles.
	Set myBodyTextStyle = myAddStyle(myDocument, "BodyText", 2)
	myBodyTextStyle.pointSize = 10
	myBodyTextStyle.Leading = 12
	Set myHeading1Style = myAddStyle(myDocument, "Heading1", 2)
	myHeading1Style.pointSize = 24
	myHeading1Style.Leading = 24
	myHeading1Style.SpaceBefore = 24
	Set myHeading2Style = myAddStyle(myDocument, "Heading2", 2)
	myHeading2Style.pointSize = 12
	myHeading2Style.Leading = 12
	myHeading2Style.SpaceBefore = 12
	myHeading2Style.FontStyle = "Bold"
	myString = "Heading 1" & vbCr
	myString = myString & "This is a body text paragraph. It doesn't say anything important. It's just here to take up space." & vbCr
	myString = myString & "Heading 2" & vbCr
	myString = myString & "This is another body text paragraph. It doesn't say anything important. It's just here to take up space." & vbCr
	myString = myString & "Heading 2" & vbCr
	myString = myString & "Like the dummy paragraphs above, this is a body text paragraph. It doesn't say anything important. It's just here to take up space." & vbCr
	myString = myString & "This is yet another a body text paragraph. It doesn't say anything important. It's just here to take up space." & vbCr
	myString = myString & "Heading 2" & vbCr
	myString = myString & "Like the dummy paragraphs above, this is a body text paragraph. It doesn't say anything important. It's just here to take up space." & vbCr
	myString = myString & "This is yet another a body text paragraph. It doesn't say anything important. It's just here to take up space." & vbCr
	myString = myString & "Heading 2" & vbCr
	myString = myString & "Like the dummy paragraphs above, this is a body text paragraph. It doesn't say anything important. It's just here to take up space." & vbCr
	myString = myString & "This is yet another a body text paragraph. It doesn't say anything important. It's just here to take up space." & vbCr
	Set myTextFrame = myPage.TextFrames.Add
	myBounds = myGetBounds(myDocument, myPage)
	myX1 = myBounds(1)
	myY1 = myBounds(2)/2
	myX2 = myBounds(3)
	myY2 = myBounds(2)
	myTextFrame.geometricBounds = Array(myY1, myX1, myY2, myX2)
	myTextFrame.Contents = myString
	myTextFrame.ParentStory.Texts.Item(1).ApplyParagraphStyle myBodyTextStyle, True
	myInDesign.FindTextPreferences = idNothingEnum.idNothing
	myInDesign.ChangeTextPreferences = idNothingEnum.idNothing
	myInDesign.FindTextPreferences.FindWhat = "Heading 1"
	myInDesign.ChangeTextPreferences.AppliedParagraphStyle = myHeading1Style
	myDocument.ChangeText
	myInDesign.FindTextPreferences.FindWhat = "Heading 2"
	myInDesign.ChangeTextPreferences.AppliedParagraphStyle = myHeading2Style
	myDocument.ChangeText
	myInDesign.FindTextPreferences = idNothingEnum.idNothing
	myInDesign.ChangeTextPreferences = idNothingEnum.idNothing
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Rem Create a TOC style and generate the TOC.
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	myX = myPage.MarginPreferences.Left
	myY = myPage.MarginPreferences.Top
	myTabWidth = myDocument.DocumentPreferences.PageWidth - (myX + myPage.MarginPreferences.Right)
	Rem Create some TOC styles.
	Set myHeading1TOCStyle = myAddStyle(myDocument, "Heading1TOC", 2)
	myHeading1TOCStyle.pointSize = 12
	myHeading1TOCStyle.Leading = 12
	myHeading1TOCStyle.FontStyle = "Bold"
	Set myTabStop = myHeading1TOCStyle.TabStops.Add
	myTabStop.Alignment = idTabStopAlignment.idRightAlign
	myTabStop.position = myTabWidth
	myTabStop.Leader = "."
	Set myHeading2TOCStyle = myAddStyle(myDocument, "Heading2TOC", 2)
	myHeading2TOCStyle.pointSize = 10
	myHeading2TOCStyle.Leading = 12
	myHeading2TOCStyle.TabStops.Add
	Set myTabStop = myHeading2TOCStyle.TabStops.Add
	myTabStop.Alignment = idTabStopAlignment.idRightAlign
	myTabStop.position = myTabWidth
	myTabStop.Leader = "."
	Set myTabLeaderStyle = myAddStyle(myDocument, "TabLeader", 1)
	myTabLeaderStyle.FontStyle = "Regular"
	myTabLeaderStyle.pointSize = 10
	Set myTOCStyle = myDocument.TOCStyles.Add
	myTOCStyle.Name = "ExampleTOCStyle"
	myTOCStyle.CreateBookmarks = True
	myTOCStyle.Title = "Contents"
	myTOCStyle.TitleStyle = myDocument.ParagraphStyles.Item("Heading1")
	Set myTOCStyleEntry = myTOCStyle.TOCStyleEntries.Add("Heading1")
	myTOCStyleEntry.FormatStyle = myHeading1TOCStyle
	myTOCStyleEntry.Separator = vbTab
	myTOCStyleEntry.SeparatorStyle = myTabLeaderStyle
	Set myTOCStyleEntry = myTOCStyle.TOCStyleEntries.Add("Heading2")
	myTOCStyleEntry.FormatStyle = myHeading2TOCStyle
	myTOCStyleEntry.Separator = vbTab
	myTOCStyleEntry.SeparatorStyle = myTabLeaderStyle
	Rem CreateTOC parameters:
	Rem Using As TOCStyle
	Rem [Replacing As Boolean = False]
	Rem [FromBook]
	Rem [PlacePoint]
	Rem [IncludeOverset As Boolean = False]
	Rem [DestinationLayer]
	myDocument.CreateTOC myTOCStyle, , , Array(myX, myY)
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myAddStyle(myDocument, myStyleName, myStyleType)
	On Error Resume Next
	Select Case myStyleType
		Case 1:
			Set myStyle = myDocument.CharacterStyles.Item(myStyleName)
			If Err.Number <> 0 Then
				Set myStyle = myDocument.CharacterStyles.Add
				myStyle.Name = myStyleName
				Err.Clear
			End If
			On Error GoTo 0
		Case 2:
			Set myStyle = myDocument.ParagraphStyles.Item(myStyleName)
			If Err.Number <> 0 Then
				Set myStyle = myDocument.ParagraphStyles.Add
				myStyle.Name = myStyleName
				Err.Clear
			End If
			On Error GoTo 0
		Case 3:
			Set myStyle = myDocument.ObjectStyles.Item(myStyleName)
			If Err.Number <> 0 Then
				Set myStyle = myDocument.ObjectStyles.Add
				myStyle.Name = myStyleName
				Err.Clear
			End If
			On Error GoTo 0
	End Select
	Set myAddStyle = myStyle
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