Rem LockLayersBelow.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to lock all layers below the active layer.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	For myCounter = 1 To 10
		myDocument.Layers.Add
	Next
	myDocument.ActiveLayer = myDocument.Layers.Item(5)
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Rem<fragment>
	Rem Given a document "myDocument"...
	Set myTargetLayer = myDocument.ActiveLayer
	Set myLayers = myDocument.Layers.ItemByRange(myDocument.Layers.Count, myTargetLayer.Index + 1)
	For myCounter = 1 To myLayers.Count
		myLayers.Item(myCounter).Locked = True
	Next
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function