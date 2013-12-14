Rem XMLViewPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets Structure panel display options.
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
   Set myXMLViewPreferences = myDocument.XMLViewPreferences
   myXMLViewPreferences.ShowAttributes = True
   myXMLViewPreferences.ShowStructure = True
   myXMLViewPreferences.ShowTaggedFrames = True
   myXMLViewPreferences.ShowTagMarkers = True
   myXMLViewPreferences.ShowTextSnippets = True
   Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function

