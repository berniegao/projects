Rem ViewPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to set the measurement units of a document.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
    myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	With myDocument.ViewPreferences
		Rem Measurement unit choices are:
		Rem * idMeasurementUnits.idPicas
		Rem * idMeasurementUnits.idPoints
		Rem * idMeasurementUnits.idInches
		Rem * idMeasurementUnits.idInchesDecimal
		Rem * idMeasurementUnits.idMillimeters
		Rem * idMeasurementUnits.idCentimeters
		Rem * idMeasurementUnits.idCiceros
		Rem * idMeasurementUnits.idCustom
		Rem * idMeasurementUnits.idAgates
		Rem If you set the the vertical or horizontal measurement units
		Rem to idMeasurementUnits.idCustom, you can also set a custom
		Rem ruler increment (in points) using:
		Rem .HorizontalCustomPoints = 15
		Rem .VerticalCustomPoints = 15
		Rem Set horizontal and vertical measurement units to points.
		.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
		.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function

