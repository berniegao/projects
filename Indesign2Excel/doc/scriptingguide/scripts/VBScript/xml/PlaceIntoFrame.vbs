Rem PlaceIntoFrame.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Create a frame and place XML within it.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.documents.Add
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
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Rem PlaceIntoFrame has two parameters:
	Rem On: The page, spread, or master spread on which to create the frame
	Rem GeometricBounds: The bounds of the new frame (in page coordinates).
	myDocument.xmlElements.item(1).xmlElements.item(1).PlaceIntoFrame myPage, Array(72, 72, 288, 288)
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function