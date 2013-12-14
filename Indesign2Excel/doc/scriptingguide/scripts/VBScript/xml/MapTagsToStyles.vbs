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
	Set myInDesign = CreateObject("InDesign.Application")
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
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
	Rem Add XML elements.
	Set myRootXMLElement = myDocument.XMLElements.Item(1)
	Set myXMLElementA = myRootXMLElement.XMLElements.Add(myHeading1XMLTag)
	myXMLElementA.Contents = "Heading 1"
	myXMLElementA.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myXMLElementB = myRootXMLElement.XMLElements.Add(myPara1XMLTag)
	myXMLElementB.Contents = "This is the first paragraph in the article."
	myXMLElementB.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myXMLElementC = myRootXMLElement.XMLElements.Add(myBodyTextXMLTag)
	myXMLElementC.Contents = "This is the second paragraph in the article."
	myXMLElementC.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myXMLElementD = myRootXMLElement.XMLElements.Add(myHeading2XMLTag)
	myXMLElementD.Contents = "Heading 2"
	myXMLElementD.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myXMLElementE = myRootXMLElement.XMLElements.Add(myPara1XMLTag)
	myXMLElementE.Contents = "This is the first paragraph following the subhead."
	myXMLElementE.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myXMLElementF = myRootXMLElement.XMLElements.Add(myBodyTextXMLTag)
	myXMLElementF.Contents = "This is the second paragraph following the subhead."
	myXMLElementF.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	Rem Associate the root XML element with the text frame
	Rem so that you can see the effect of the tag to style mapping.
	myDocument.XMLElements.Item(1).PlaceXML myPage.TextFrames.Item(1)
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Rem Create a tag to style mapping.
	myDocument.XMLImportMaps.Add myDocument.XMLTags.Item("heading_1"), myDocument.ParagraphStyles.Item("heading 1")
	myDocument.XMLImportMaps.Add myDocument.XMLTags.Item("heading_2"), myDocument.ParagraphStyles.Item("heading 2")
	myDocument.XMLImportMaps.Add myDocument.XMLTags.Item("para_1"), myDocument.ParagraphStyles.Item("para 1")
	myDocument.XMLImportMaps.Add myDocument.XMLTags.Item("body_text"), myDocument.ParagraphStyles.Item("body text")
	Rem Apply the tag to style mapping.
	myDocument.MapXMLTagsToStyles
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