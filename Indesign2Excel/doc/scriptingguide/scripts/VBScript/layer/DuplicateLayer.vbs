Rem DuplicateLayer.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to duplicate a layer.
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
	Rem <fragment>
	Rem Given a document "myDocument"...
	Set myLayer = myDocument.Layers.Item(1)
	Set myLayer1 = myLayer.Duplicate()
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function