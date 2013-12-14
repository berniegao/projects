Rem CloseDocument.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Close the active document.
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
   myInDesign.Documents.Item(1).Close
   Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
