Rem RemovePathPoint.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to remove a point from a path.
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
	Set myGraphicLine = myPage.GraphicLines.Add
	myGraphicLine.Paths.Item(1).PathPoints.Item(1).Anchor = Array(72, 72)
	myGraphicLine.Paths.Item(1).PathPoints.Item(2).Anchor = Array(72, 144)
	Set myPathPoint = myGraphicLine.Paths.Item(1).PathPoints.Add
	myPathPoint.Anchor = Array(144, 144)
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myPolygon = myPage.Polygons.Item(1)
	Rem <fragment>
	Rem Given a polygon "myPolygon", remove the 
	Rem last path point in the first path.
	myPolygon.Paths.Item(1).PathPoints.Item(-1).Delete
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function