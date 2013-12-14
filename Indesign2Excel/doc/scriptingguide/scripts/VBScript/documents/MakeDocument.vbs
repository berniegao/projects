Rem MakeDocument.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a new document.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
   Rem <fragment>
   Set myDocument = myInDesign.Documents.Add
   Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function