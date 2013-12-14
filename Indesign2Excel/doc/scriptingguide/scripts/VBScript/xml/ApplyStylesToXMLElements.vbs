Rem ApplyStylesToXMLElements.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to apply paragraph and character styles to XML elements
Rem without using a tag to style/style to tag mapping.
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
	Set myCharacterStyle = myDocument.CharacterStyles.Add
	myCharacterStyle.Name = "Emphasis"
	myCharacterStyle.FontStyle = "Italic"
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)   
	Rem Add XML elements.
	Set myRootXMLElement = myDocument.XMLElements.Item(1)
	Set myXMLElementA = myRootXMLElement.XMLElements.Add(myDocument.XMLTags.Item("heading_1"))
	myXMLElementA.Contents = "Heading 1"
	myXMLElementA.ApplyParagraphStyle myDocument.ParagraphStyles.Item("heading 1"), True
	myXMLElementA.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myXMLElementB = myRootXMLElement.XMLElements.Add(myDocument.XMLTags.Item("para_1"))
	myXMLElementB.Contents = "This is the first paragraph in the article."
	myXMLElementB.ApplyParagraphStyle myDocument.ParagraphStyles.Item("para 1"), True
	myXMLElementB.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myXMLElementC = myRootXMLElement.XMLElements.Add(myDocument.XMLTags.Item("body_text"))
	myXMLElementC.Contents = "This is the second paragraph in the article."
	myXMLElementC.ApplyParagraphStyle myDocument.ParagraphStyles.Item("body text"), True
	myXMLElementC.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myXMLElementD = myRootXMLElement.XMLElements.Add(myDocument.XMLTags.Item("heading_2"))
	myXMLElementD.Contents = "Heading 2"
	myXMLElementD.ApplyParagraphStyle myDocument.ParagraphStyles.Item("heading 2"), True
	myXMLElementD.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myXMLElementE = myRootXMLElement.XMLElements.Add(myDocument.XMLTags.Item("para_1"))
	myXMLElementE.Contents = "This is the first paragraph following the subhead."
	myXMLElementE.ApplyParagraphStyle myDocument.ParagraphStyles.Item("para 1"), True
	myXMLElementE.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myXMLElementF = myRootXMLElement.XMLElements.Add(myDocument.XMLTags.Item("body_text"))
	myXMLElementF.Contents = "This is the second paragraph following the subhead."
	myXMLElementF.ApplyParagraphStyle myDocument.ParagraphStyles.Item("body text"), True
	myXMLElementF.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
	Set myXMLElementG = myXMLElementF.XMLElements.Add(myDocument.XMLTags.Item("body_text"))
	myXMLElementG.Contents = "Note:"
	Set myXMLElementG = myXMLElementG.Move(idLocationOptions.idAtBeginning, myXMLElementF)
	myXMLElementG.InsertTextAsContent " ", idXMLElementPosition.idAfterElement
	myXMLElementG.ApplyCharacterStyle myDocument.CharacterStyles.Item("Emphasis"), True
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	Set myStory = myTextFrame.ParentStory
	Rem Associate the root XML element with the story.
	myRootXMLElement.PlaceXML myStory
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
