Rem ReleaseCompoundPath.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to release a compound path.
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
	myDocument.ViewPreferences.RulerOrigin = idRulerOrigin.idPageOrigin
	Set myPage = myDocument.Pages.Item(1)
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array(72, 72, 144, 144)
	Set myOval = myPage.Ovals.Add
	myOval.GeometricBounds = Array(108, 108, 180, 180)
	myRectangle.MakeCompoundPath myOval
End Function
Function mySnippet(myInDesign)
	Set myPolygon = myInDesign.Documents.Item(1).Pages.Item(1).Polygons.Item(1)	
	Rem <fragment>
	Rem Given a polygon "myPolygon" (all compound paths are type Polygon)...
	Set mPageItems = myPolygon.ReleaseCompoundPath
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function