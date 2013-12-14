Rem PlaceIntoCopy.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Associate an XML element with a copy of a page item.
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
	myDocument.viewPreferences.horizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.viewPreferences.verticalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.viewPreferences.rulerOrigin = idRulerOrigin.idPageOrigin
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
	myTextFrame.geometricBounds = Array(72, 72, 144, 144)
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Rem Function PlaceIntoCopy(On, PlacePoint, CopyItem As PageItem, [RetainExistingFrame As Boolean = False]) As PageItem	
	Set myXMLElement = myDocument.xmlElements.item(1)
	myXMLElement.placeIntoCopy myPage, Array(288, 72), myPage.textFrames.item(1), True
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function