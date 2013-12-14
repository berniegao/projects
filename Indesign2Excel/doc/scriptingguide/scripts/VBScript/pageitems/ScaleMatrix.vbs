Rem ScaleMatrix.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to use the ScaleMatrix method.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySnippet(myInDesign)
	Rem <fragement>
	Rem Given a document with a rectangle on page 1...
	Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Rectangles.Item(1)
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add
	Set myTransformationMatrix = myTransformationMatrix.ScaleMatrix(.5, .5)
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	Rem </fragement>
End Function
Function mySetup(myInDesign)
	myInDesign.TransformPreferences.WhenScaling = idWhenScalingOptions.idAdjustScalingPercentage
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myPage = myDocument.Pages.Item(1)
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array(72, 72, 144, 144)
End Function
Function myTeardown(myInDesign)
End Function 