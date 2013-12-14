Rem AssignPageItemsToLayers.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to create page items on a given layer
Rem and how to move existing page items to a layer.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Rem Add layers.
	With (myDocument.Layers.Add)
		.name = "Rectangles"
	End With
	With (myDocument.Layers.Add)
		.name = "Ovals"
	End With
	With (myDocument.Layers.Add)
		.name = "TextFrames"
	End With
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Rem<fragment>
	Rem Given a reference to a page "myPage," and a document "myDocument,"
	Rem create a text frame on a layer named "TextFrames"
	Set myTextFrame = myPage.TextFrames.Add(myDocument.Layers.Item("TextFrames"))
	myTextFrame.geometricBounds = Array(72, 72, 144, 144)
	Rem Create a rectangle on the current target layer.
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.geometricBounds = Array(72, 144, 144, 216)
	Rem Move the rectangle to a specific layer.
	myRectangle.ItemLayer = myDocument.Layers.Item("Rectangles")
	Rem Create a series of ovals.
	For myCounter = 72 To 172 Step 10
		Set myOval = myPage.Ovals.Add
		myOval.geometricBounds = Array(216, myCounter, 226, myCounter + 10)
	Next
	Rem Move all of the ovals on the page to a specific layer.
	For myCounter = 1 To myPage.Ovals.Count
		myPage.Ovals.Item(myCounter).ItemLayer = myDocument.Layers.Item("Ovals")
	Next
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function