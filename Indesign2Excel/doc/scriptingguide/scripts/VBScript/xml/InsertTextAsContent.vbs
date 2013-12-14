Rem InsertTextAsContent.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to use the InsertTextAsContent method.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Set myPage = myInDesign.ActiveWindow.ActivePage
	Set myRootXMLElement = myDocument.xmlElements.item(1)
	Set myXMLTag = myDocument.xmlTags.add("xml_element")
	Set myXMLElementA = myRootXMLElement.xmlElements.add(myXMLTag)
	myXMLElementA.contents = "This is a paragraph in an XML story."
	Set myXMLElementB = myRootXMLElement.xmlElements.add(myXMLTag)
	myXMLElementB.contents = "This is another paragraph in an XML story."
	Set myXMLElementC = myRootXMLElement.xmlElements.add(myXMLTag)
	myXMLElementC.contents = "This is the third paragraph in an example XML story."
	Set myXMLElementD = myRootXMLElement.xmlElements.add(myXMLTag)
	myXMLElementD.contents = "This is the last paragraph in the XML story."
	Set myTextFrame = myDocument.pages.item(1).textFrames.add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myRootXMLElement.placeXML myTextFrame
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myXMLElement = myDocument.xmlElements.item(1).xmlElements.item(1)
	Rem By inserting the return character after the XML element, the character
	Rem becomes part of the content of the parent XML element, not of the element itself.
	myXMLElement.insertTextAsContent vbcr, idXMLElementPosition.idAfterElement
	Set myXMLElement = myDocument.xmlElements.item(1).xmlElements.item(2)
	myXMLElement.insertTextAsContent "Static text: ", idXMLElementPosition.idBeforeElement
	myXMLElement.insertTextAsContent vbcr, idXMLElementPosition.idAfterElement
	Rem To add text inside the element, set the location option to beginning or end.
	Set myXMLElement = myDocument.xmlElements.item(1).xmlElements.item(3)
	myXMLElement.insertTextAsContent "Text at the start of the element: ", idXMLElementPosition.idElementStart
	myXMLElement.insertTextAsContent " Text at the end of the element.", idXMLElementPosition.idElementEnd
	myXMLElement.insertTextAsContent vbcr, idXMLElementPosition.idAfterElement
	Rem Add static text outside the element.
	Set myXMLElement = myDocument.xmlElements.item(1).xmlElements.item(4)
	myXMLElement.insertTextAsContent "Text before the element: ", idXMLElementPosition.idBeforeElement
	myXMLElement.insertTextAsContent " Text after the element.", idXMLElementPosition.idAfterElement
	Rem To insert text inside the text of an element, work with the text objects contained by the element.
	myXMLElement.words.item(3).insertionPoints.item(1).contents = "(the third word of) "
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