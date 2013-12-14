Rem ActiveLayer.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to get a reference to the active layer.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Rem<fragment>
	Rem Given a document "myDocument"...
	Set myLayer = myDocument.ActiveLayer
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function