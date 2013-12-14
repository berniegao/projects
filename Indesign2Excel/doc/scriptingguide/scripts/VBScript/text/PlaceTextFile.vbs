Rem PlaceTextFile.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Places a text file on the current page of the active document.
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
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	myX = myPage.MarginPreferences.Left
	myY = myPage.MarginPreferences.Top
	Rem Autoflow a text file on the current page.
	Rem Parameters for Page.place():
	Rem File as File object,
	Rem [PlacePoint as Array [x, y]]
	Rem [DestinationLayer as Layer object]
	Rem [ShowingOptions as Boolean = False]
	Rem [Autoflowing as Boolean = False]
	Rem You'll have to fill in your own file path.
	Set myTextFrame = myPage.Place("c:\test.txt", Array(myX, myY), , False, True)
	Rem Note that if the PlacePoint parameter is inside a file, only the vertical (y)
	Rem coordinate will be honored--the text frame will expand horizontally to fit the column.
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function