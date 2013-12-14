Rem ExportXML.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to export XML from a document.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Set myRootXMLElement = myDocument.XMLElements.item(1)
	Set myXMLTag = myDocument.XMLTags.add("xml_element")
	Set myXMLElementA = myRootXMLElement.XMLElements.add(myXMLTag)
	myXMLElementA.contents = "A"
	Set myXMLElementB = myRootXMLElement.XMLElements.add(myXMLTag)
	myXMLElementB.contents = "B"
	Set myXMLElementC = myRootXMLElement.XMLElements.add(myXMLTag)
	myXMLElementC.contents = "C"
	Set myXMLElementD = myRootXMLElement.XMLElements.add(myXMLTag)
	myXMLElementD.contents = "D"
	With myXMLElementD
		For myCounter = 1 To 5
			With .XMLElements.add(myXMLTag)
				.Contents = "D" & CStr(myCounter)
			End With
		Next
	End With
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Rem Export the entire XML structure in the document.
	Rem You'll have to fill in your own file path.
	myDocument.export idExportFormat.idXML, "c:\completeDocumentXML.xml"
	Rem Export a specific XML element and its child XML elements.
	Set myXMLElement = myDocument.xmlElements.item(1).xmlElements.item(-1)
	myXMLElement.export idExportFormat.idXML, "c:\partialDocumentXML.xml"
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function