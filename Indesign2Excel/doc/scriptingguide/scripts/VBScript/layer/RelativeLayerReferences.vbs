Rem RelativeLayerReferences.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to get a reference to a layer by name.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.documents.add
	Rem Add several layers.
	for myCounter = 1 To 10
		myDocument.Layers.Add
	Next
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Rem <fragment>
	Rem Given a document "myDocument"...
	Set myLayer = myDocument.Layers.Item(5)
	myDocument.ActiveLayer = myLayer
	Set myNextLayer = myDocument.Layers.NextItem(myLayer)
	Set myPreviousLayer = myDocument.Layers.PreviousItem(myLayer)
	myString = "The layer below the target layer is " & myNextLayer.name & vbCr
	myString = myString & "The layer above the target layer is " & myPreviousLayer.name
	MsgBox myString
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function