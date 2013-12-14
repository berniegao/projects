Rem PageResize.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Resize pages.

main

Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function

Function mySetup(myInDesign)
	Rem Create a new document.
	Set myDocument = myInDesign.Documents.Add()
	With myDocument.ViewPreferences
		.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
		.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	End With
	Rem Create another 3 pages.
	Set myPages = myDocument.Pages
	For i = 2 To 4
		myPages.Add()
	Next
End Function

Function mySnippet(myInDesign)
	Rem <fragment>
	Rem Given a document with four pages (1, 2, 3, 4)...
	Set myDocument = myInDesign.ActiveDocument
	Set myPages = myDocument.Pages
	Rem Resize page to two times bigger
	Call myPages.Item(2).Resize(idCoordinateSpaces.idInnerCoordinates, _
								idAnchorPoint.idCenterAnchor, _
								idResizeMethods.idMultiplyingCurrentDimensionsBy, _
								Array(2, 2))
	Rem Resize page to 400 points width and 600 points height.
	Call myPages.item(3).Resize(idCoordinateSpaces.idInnerCoordinates, _
								idAnchorPoint.idCenterAnchor, _
								idResizeMethods.idReplacingCurrentDimensionsWith, _
								Array(400, 600))
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function
