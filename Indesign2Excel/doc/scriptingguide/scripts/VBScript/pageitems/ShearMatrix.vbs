Rem ShearMatrix.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to use the ShearMatrix method
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
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(, , 0)
	Rem ShearMatrix can take the following parameters: byAngle, bySlope
	Rem Replace the current matrix with the sheared matrix.
	Set myTransformationMatrix = myTransformationMatrix.ShearMatrix(45)
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	Rem The following statements are equivalent. 
	Rem slope = rise/run--so a 45 degree slope is 1.
	Set myTransformationMatrix = myTransformationMatrix.shearMatrix(45)
	Set myTransformationMatrix = myTransformationMatrix.shearMatrix(, 1)
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
End function