Rem MakeXMLElement.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a new XML element.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myXMLTagA = myDocument.XMLTags.Add("XML_tag_A")
	Set myXMLElementA = myDocument.XMLElements.Item(1).XMLElements.Add(myXMLTagA)
	myXMLElementA.Contents = "This is an XML element containing text."
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function