Rem Duplicate.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to use the duplicate method.
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
	Rem Duplicate the rectangle and move the 
	Rem duplicate to the location (12, 12).
	Rem Absolute move:
	Set myDuplicate = myRectangle.Duplicate(Array(12, 12))
	Rem Duplicate the rectangle and move the duplicate *by* 12
	Rem points horizontally, 12 points vertically.
	Rem Relative move (note empty first parameter):
	Set myDuplicate = myRectangle.Duplicate (, Array(12, 12))
	Rem Duplicate the rectangle to another page (rectangle appears at (0,0).
	Set myPage = myInDesign.Documents.Item(1).Pages.Add
	Set myDuplicate = myRectangle.Duplicate(myPage)
	Rem Duplicate the rectangle to another document.
	Set myDocument = myInDesign.Documents.Add
	Set myDuplicate = myRectangle.Duplicate(myDocument.Pages.Item(1))
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function