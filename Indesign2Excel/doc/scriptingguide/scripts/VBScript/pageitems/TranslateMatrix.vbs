Rem TranslateMatrix.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to use the translateMatrix method.
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
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add
	Rem translateMatrix takes two parameters: horizontallyBy and verticallyBy
	Set myTransformationMatrix = myTransformationMatrix.TranslateMatrix(72, 0)
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