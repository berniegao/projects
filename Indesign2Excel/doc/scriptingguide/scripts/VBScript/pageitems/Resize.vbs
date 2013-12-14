Rem Resize.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to use the resize method.
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
	Set myPage = myDocument.Pages.Item(1)
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array(72, 72, 144, 144)
	myRectangle.StrokeWeight = 4
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(,,,30)
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
End Function
Function mySnippet(myInDesign)
	Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Rectangles.Item(1)	
	Rem <fragment>
	Rem Given a reference to a rectangle "myRectangle"...
	Set myDuplicate = myRectangle.Duplicate
	myDuplicate.Resize idCoordinateSpaces.idInnerCoordinates, idAnchorPoint.idCenterAnchor, idResizeMethods.idMultiplyingCurrentDimensionsBy, Array(2, 2)
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function