Rem SaveXMLTags.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Saves a set of XML tags to a file.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Set myXMLTagA = myDocument.XMLTags.Add
	myXMLTagA.Name = "XMLTagA"
	Set myXMLTagB = myDocument.XMLTags.Add
	myXMLTagB.Name = "XMLTagB"
	Set myXMLTagC = myDocument.XMLTags.Add
	myXMLTagC.Name = "XMLTagC"
End Function
Function mySnippet(myInDesign)
   Rem <fragment>
   Set myDocument = myInDesign.Documents.Item(1)
   Rem You'll have to fill in your own file path.
   myDocument.SaveXMLTags "c:\xml_tags.xml", "Tag set created August 18, 2008"
   Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function

