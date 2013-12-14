Rem StackingOrder.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to change the stacking order of objects.
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
End Function
Function mySnippet(myInDesign)
	Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Rectangles.Item(1)	
	Set myOval = myInDesign.Documents.Item(1).Pages.Item(1).Ovals.Item(1)	
	Rem <fragment>
	Rem Given a rectangle "myRectangle" and an oval "myOval",
	Rem where "myOval" is in front of "myRectangle", bring
	Rem the rectangle to the front...
	myRectangle.BringToFront
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
