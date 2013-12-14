Rem ExportSelectedXMLElement.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to export the selected XML element.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.documents.add
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
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	myDocument.select(myDocument.XMLElements.item(1).XMLElements.item(2))
	myDocument.xmlExportPreferences.ExportFromSelected = True
	Rem You'll have to fill in your own file path.
	myDocument.export idExportFormat.idXML, "c:\selectedXMLElement.xml"
	myDocument.xmlExportPreferences.exportFromSelected = false
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function