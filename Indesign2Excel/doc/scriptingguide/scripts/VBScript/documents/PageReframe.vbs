Rem PageReframe.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Resize pages by reframe method.

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
	Rem Make the page one inch wider and one inch higher.
	Set myPage = myPages.Item(2)
	myBounds = myPage.Bounds
	myY1 = myBounds(0)
	myX1 = myBounds(1)
	myY2 = myBounds(2)+72
	myX2 = myBounds(3)+72
	Call myPage.Reframe(idCoordinateSpaces.idInnerCoordinates, _
						Array(Array(myX1, myY1), _
						Array(myX2, myY2)))
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function
