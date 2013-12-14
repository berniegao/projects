Rem DeleteLayer.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to delete a layer.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.Layers.Add
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Rem <fragment>
	Rem Given a document "myDocument" containing at least two layers...
	Set myLayer = myDocument.Layers.Item(1)
	myLayer.Delete()
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function