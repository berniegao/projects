Rem ConvertElementToAttribute.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to convert an XML attribute to an XML element.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.documents.add
	myDocument.viewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.viewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.viewPreferences.RulerOrigin = idRulerOrigin.idPageOrigin
	Set myRootXMLElement = myDocument.xmlElements.item(1)
	Set myXMLTag = myDocument.xmlTags.add("xml_element")
	Set myXMLElementA = myRootXMLElement.xmlElements.add(myXMLTag)
	myXMLElementA.contents = "A"
	Set myXMLElementB = myRootXMLElement.xmlElements.add(myXMLTag)
	myXMLElementB.contents = "B"
	Set myXMLElementC = myRootXMLElement.xmlElements.add(myXMLTag)
	myXMLElementC.contents = "C"
	Set myXMLElementD = myRootXMLElement.xmlElements.add(myXMLTag)
	myXMLElementD.contents = "D"
	Rem Create a rectangle.
	Set myRectangle = myDocument.pages.item(1).rectangles.add
	myRectangle.GeometricBounds = Array(72, 72, 144, 144)
	Rem Associate myXMLElementD with the rectangle.
	myXMLElementD.placeXML myRectangle
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myRootXMLElement = myDocument.xmlElements.item(1)
	myRootXMLElement.xmlElements.item(-1).convertToAttribute
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