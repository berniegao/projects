Rem RotatePageItem.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to rotate a page item.
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
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Rem Create a transformation matrix with a counterclockwise rotation angle of 30 degrees.
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(, , , 30)
	Rem Given a rectangle on page 1 of the active document...
	Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Rectangles.Item(1)
	Rem Rotate the rectangle 30 degrees counterclockwise.
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	Rem</fragment>
End Function
function myTeardown(myInDesign)
End Function