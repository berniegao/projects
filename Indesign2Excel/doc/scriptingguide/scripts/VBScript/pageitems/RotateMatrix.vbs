Rem RotateMatrix.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to use the RotateMatrix method.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Rem Given a document with a rectangle on page 1...
	Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Rectangles.Item(1)
	myInDesign.TransformPreferences.WhenScaling = idWhenScalingOptions.idAdjustScalingPercentage
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add
	Rem rotateMatrix can take the following parameters: byAngle, byCosine, bySine
	Rem Replace the current matrix with the rotated matrix.
	Rem The following statements are equivalent (0.25881904510252 is the sine of 15 degrees, 0.96592582628907 is the cosine).
	Rem myTransformationMatrix = myTransformationMatrix.rotateMatrix(15)
	Rem myTransformationMatrix = myTransformationMatrix.rotateMatrix(, 0.96592582628907)
	Rem myTransformationMatrix = myTransformationMatrix.rotateMatrix(, , 0.25881904510252)
	Set myTransformationMatrix = myTransformationMatrix.RotateMatrix(15)
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	Rem</fragment>
End Function
function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myPage = myDocument.Pages.Item(1)
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array(72, 72, 144, 144)
End Function
Function myTeardown(myInDesign)
End Function
