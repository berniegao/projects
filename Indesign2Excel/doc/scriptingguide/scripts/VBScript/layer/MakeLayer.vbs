Rem MakeLayer.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to create a new layer.
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
	Rem<fragment>
	Rem Given a document "myDocument"...
	Set myDocument = myInDesign.Documents.Item(1)
	Set myLayer = myDocument.layers.Add()
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function