Rem MoveLayer.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to change the stacking order of objects using layers.
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
	myDocument.ViewPreferences.RulerOrigin = idRulerOrigin.idPageOrigin
	Rem Add colors.
	myAddColor myDocument, "DGC1_446a", idColorModel.idProcess, Array(0, 100, 0, 50)
	myAddColor myDocument, "DGC1_446b", idColorModel.idProcess, Array(100, 0, 50, 0)
	Set myPage = myDocument.Pages.Item(1)
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array(72, 72, 144, 144)
	Set myOval = myPage.Ovals.Add
	myOval.GeometricBounds = Array(108, 108, 180, 180)
	myRectangle.FillColor = myDocument.Colors.Item("DGC1_446a")
	myOval.FillColor = myDocument.Colors.Item("DGC1_446b")	
	Rem Add a layer.
	On Error Resume Next
	Set myLayer = myDocument.Layers.Item("myLayer")
	If Err.Number <> 0 Then
		Set myLayer = myDocument.Layers.Add
		myLayer.Name = "myLayer"
		Err.Clear
	End If
	Rem restore normal error handling
	On Error GoTo 0
End Function
Function mySnippet(myInDesign)
	Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Rectangles.Item(1)	
	Set myOval = myInDesign.Documents.Item(1).Pages.Item(1).Ovals.Item(1)	
	Set myLayer = myInDesign.Documents.Item(1).Layers.Item("myLayer")
	myOval.ItemLayer = myLayer
	Rem <fragment>
	Rem Given a layer "myLayer", move the layer behind
	Rem the default layer (the lowest layer in the document 
	Rem is Layers.Item(-1).
	myLayer.Move idLocationOptions.idAfter, myInDesign.Documents.Item(1).Layers.Item(-1)
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myAddColor(myDocument, myColorName, myColorModel, myColorValue)
    On Error Resume Next
    Set myColor = myDocument.colors.Item(myColorName)
    If Err.Number <> 0 Then
        Set myColor = myDocument.colors.Add
    End If
    Err.Clear
    On Error GoTo 0
    myColor.Name = myColorName
    myColor.model = myColorModel
    myColor.colorValue = myColorValue
End Function
