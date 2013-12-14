Rem MapTagsToStyles.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Demonstrates tag to style mapping.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myPage = myDocument.Pages.Item(1)
	Rem Create a series of XML tags.
	Set myHeading1XMLTag = myDocument.XMLTags.Add("heading_1")
	Set myHeading2XMLTag = myDocument.XMLTags.Add("heading_2")
	Set myPara1XMLTag = myDocument.XMLTags.Add("para_1")
	Set myBodyTextXMLTag = myDocument.XMLTags.Add("body_text")
	Rem Create a series of paragraph styles.
	Set myHeading1Style = myDocument.ParagraphStyles.Add
	myHeading1Style.Name = "heading 1"
	myHeading1Style.PointSize = 24
	Set myHeading2Style = myDocument.ParagraphStyles.Add
	myHeading2Style.Name = "heading 2"
	myHeading2Style.PointSize = 14
	myHeading2Style.SpaceBefore = 12
	Set myPara1Style = myDocument.ParagraphStyles.Add
	myPara1Style.Name = "para 1"
	myPara1Style.PointSize = 12
	myPara1Style.FirstLineIndent = 0
	Set myBodyTextStyle = myDocument.ParagraphStyles.Add
	myBodyTextStyle.Name = "body text"
	myBodyTextStyle.PointSize = 12
	myBodyTextStyle.FirstLineIndent = 24
	Rem Add text elements.
	Set myTextFrame = myDocument.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myTextFrame.ParentStory.InsertionPoints.Item(-1).Contents = "Heading 1" & vbCr
	myTextFrame.ParentStory.Paragraphs.Item(-1).ApplyParagraphStyle myHeading1Style, True
	myTextFrame.ParentStory.InsertionPoints.Item(-1).Contents = "This is the first paragraph in the article." & vbCr
	myTextFrame.ParentStory.Paragraphs.Item(-1).ApplyParagraphStyle myPara1Style, True
	myTextFrame.ParentStory.InsertionPoints.Item(-1).Contents = "This is the second paragraph in the article." & vbCr
	myTextFrame.ParentStory.Paragraphs.Item(-1).ApplyParagraphStyle myBodyTextStyle, True
	myTextFrame.ParentStory.InsertionPoints.Item(-1).Contents = "Heading 2" & vbCr
	myTextFrame.ParentStory.Paragraphs.Item(-1).ApplyParagraphStyle myHeading2Style, True
	myTextFrame.ParentStory.InsertionPoints.Item(-1).Contents = "This is the first paragraph following the subhead." & vbCr
	myTextFrame.ParentStory.Paragraphs.Item(-1).ApplyParagraphStyle myPara1Style, True
	myTextFrame.ParentStory.InsertionPoints.Item(-1).Contents = "This is the second paragraph following the subhead." & vbCr
	myTextFrame.ParentStory.Paragraphs.Item(-1).ApplyParagraphStyle myBodyTextStyle, True
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Rem Create a tag to style mapping.
	myDocument.XMLExportMaps.Add myDocument.ParagraphStyles.Item("heading 1"), myDocument.XMLTags.Item("heading_1")
	myDocument.XMLExportMaps.Add myDocument.ParagraphStyles.Item("heading 2"), myDocument.XMLTags.Item("heading_2")
	myDocument.XMLExportMaps.Add myDocument.ParagraphStyles.Item("para 1"), myDocument.XMLTags.Item("para_1")
	myDocument.XMLExportMaps.Add myDocument.ParagraphStyles.Item("body text"), myDocument.XMLTags.Item("body_text")
	Rem Apply the style to tag mapping.
	myDocument.MapStylesToXMLTags
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