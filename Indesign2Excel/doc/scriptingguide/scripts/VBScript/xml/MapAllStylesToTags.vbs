Rem MapAllStylesToTags.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to tag all styled text in a document
Rem that does not yet contain an XML structure.
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
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myDocument.Pages.Item(1))
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
	Rem Create tags that match the style names in the document,
	Rem creating an XMLExportMap for each tag/style pair.
	For myCounter = 1 To myDocument.ParagraphStyles.Count
	Set myParagraphStyle = myDocument.ParagraphStyles.Item(myCounter)
	myParagraphStyleName = myParagraphStyle.Name
	myXMLTagName = Replace(myParagraphStyleName, " ", "_")
	myXMLTagName = Replace(myXMLTagName, "[", "")
	myXMLTagName = Replace(myXMLTagName, "]", "")
	Set myXMLTag = myDocument.XMLTags.Add(myXMLTagName)
	myDocument.XMLExportMaps.Add myParagraphStyle, myXMLTag
	Next
	Rem Apply the tag to style mapping.
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