Rem Move.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to use the move method.
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
End Function
Function mySnippet(myInDesign)
	Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Rectangles.Item(1)	
	Rem <fragment>
	Rem Given a reference to a rectangle "myRectangle"...
	Rem Move the rectangle to the location (12, 12).
	Rem Absolute move:
	myRectangle.Move Array(12, 12)
	Rem Move the rectangle *by* 12 points horizontally, 12 points vertically.
	Rem Relative move (note empty first parameter):
	myRectangle.Move , Array(12, 12)
	Rem Move the rectangle to another page (rectangle appears at (0,0).
	Set myPage = myInDesign.Documents.Item(1).Pages.Add
	myRectangle.Move myPage
	Rem To move a page item to another document, use the Duplicate method.
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function