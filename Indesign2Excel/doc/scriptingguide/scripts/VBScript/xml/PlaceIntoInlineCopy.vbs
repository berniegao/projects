Rem PlaceIntoInlineCopy.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to move an element into an inline frame
Rem using the PlaceIntoInlineCopy method.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.viewPreferences.horizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.viewPreferences.verticalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.viewPreferences.rulerOrigin = idRulerOrigin.idPageOrigin
	Set myTextFrame = myDocument.Pages.Item(1).TextFrames.Add
	myTextFrame.GeometricBounds = Array(72, 72, 144, 288)
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Item(1)
	Set myXMLTag = myDocument.XMLTags.Add("XMLElement")
	Set myXMLElement = myDocument.XMLElements.Item(1).XMLElements.Add(myXMLTag)
	myXMLElement.Texts.Item(1).Contents = "This is an XML element."
	myDocument.XMLElements.Item(1).PlaceXML myTextFrame
	Set myXMLElement = myDocument.XMLElements.Item(1).XMLElements.Add(myXMLTag)
	myXMLElement.Contents = "This is the second XML element."
	myXMLElement.PlaceIntoInlineCopy myTextFrame, False
	Rem Resize the frame so that you can see the result.
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
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