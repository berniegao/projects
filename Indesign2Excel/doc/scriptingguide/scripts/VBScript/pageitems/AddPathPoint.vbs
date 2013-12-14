Rem AddPathPoint.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to add a point to a path without using the 
Rem EntirePath property.
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
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myGraphicLine = myPage.GraphicLines.Item(1)
	Rem <fragment>
	Rem Given a graphic line "myGraphicLine"...
	Set myPathPoint = myGraphicLine.Paths.Item(1).PathPoints.Add
	Rem Move the path point to a specific location.
	myPathPoint.Anchor = Array(144, 144)
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function