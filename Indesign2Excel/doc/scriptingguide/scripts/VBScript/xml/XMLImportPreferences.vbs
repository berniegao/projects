Rem XMLImportPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets XML import options.
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
   Set myXMLImportPreferences = myDocument.XMLImportPreferences
   myXMLImportPreferences.AllowTransform = False
   myXMLImportPreferences.CreateLinkToXML = False
   myXMLImportPreferences.IgnoreUnmatchedIncoming = True
   myXMLImportPreferences.IgnoreWhitespace = True
   myXMLImportPreferences.ImportCALSTables = True
   myXMLImportPreferences.ImportStyle = idXMLImportStyles.idMergeImport
   myXMLImportPreferences.ImportTextIntoTables = False
   myXMLImportPreferences.ImportToSelected = False
   myXMLImportPreferences.RemoveUnmatchedExisting = False
   myXMLImportPreferences.RepeatTextElements = True
   Rem The following properties are only used when the
   Rem AllowTransform property is set to True.
   Rem myXMLImportPreferences.TransformFilename = "c:\myTransform.xsl"
   Rem If you have defined parameters in your XSL file, then you can pass
   Rem parameters to the file during the XML import process. For each parameter,
   Rem enter an array containing two strings. The first string is the name of the
   Rem parameter, the second is the value of the parameter.
   Rem myXMLImportPreferences.TransformParameters = Array(Array("format", "1"))
   Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function

