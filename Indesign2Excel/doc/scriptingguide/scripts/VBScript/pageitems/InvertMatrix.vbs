Rem InvertMatrix.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to use the invertMatrix method
Rem
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Rectangles.Item(1)
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(, , , 30, 12, 12)
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	Set myNewRectangle = myRectangle.Duplicate
	Rem Move the duplicated rectangle to the location of the original 
	Rem rectangle by inverting, then applying the transformation matrix.
	Set myTransformationMatrix = myTransformationMatrix.InvertMatrix
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	Rem</fragment>
End Function
Function mySetup(myInDesign)
	myInDesign.TransformPreferences.WhenScaling = idWhenScalingOptions.idAdjustScalingPercentage
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myPage = myDocument.Pages.Item(1)
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array(72, 72, 144, 144)
	myDocument.ZeroPoint = Array(108, 108)
End Function
Function myTeardown(myInDesign)
End Function