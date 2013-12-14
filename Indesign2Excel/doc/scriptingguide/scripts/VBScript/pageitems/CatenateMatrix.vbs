Rem CatenateMatrix.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to use the CatenateMatrix method
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
	Rem Transformation matrix with counterclockwise rotation angle = 30.
	Set myTransformationMatrixA = myInDesign.TransformationMatrices.Add(, , , 30)
	Rem Transformation matrix with horizontal translation = 12, vertical translation = 12.
	Set myTransformationMatrixB = myInDesign.TransformationMatrices.Add(, , , , 12, 12)
	Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Rectangles.Item(1)
	Set myNewRectangle = myRectangle.Duplicate
	Rem Rotate the duplicated rectangle.
	myNewRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrixA
	Set myNewRectangle = myRectangle.Duplicate
	Rem Move the duplicate (unrotated) rectangle.
	myNewRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrixB	
	Rem Merge the two transformation matrices.
	Set myTransformationMatrix = myTransformationMatrixA.CatenateMatrix(myTransformationMatrixB)
	Set myNewRectangle = myRectangle.Duplicate
	Rem The duplicated rectangle will be both moved and rotated.
	myNewRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix	
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