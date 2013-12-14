Rem TransformValuesof.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to use the TransformValuesOf method
Rem
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Rectangles.Item(1)
	Rem Note that transformValuesOf() always returns an array containing a single transformationMatrix.
	Set myTransformArray = myRectangle.TransformValuesOf(idCoordinateSpaces.idPasteboardCoordinates)
	Set myTransformationMatrix = myTransformArray.Item(1)
	myRotationAngle = myTransformationMatrix.CounterclockwiseRotationAngle
	myShearAngle = myTransformationMatrix.ClockwiseShearAngle
	myXScale = myTransformationMatrix.HorizontalScaleFactor
	myYScale = myTransformationMatrix.VerticalScaleFactor
	myXTranslate = myTransformationMatrix.HorizontalTranslation
	myYTranslate = myTransformationMatrix.VerticalTranslation
	myString = "Rotation Angle: " & myRotationAngle & vbCr
	myString = myString & "Shear Angle: " & myShearAngle & vbCr
	myString = myString & "Horizontal Scale Factor: " & myXScale & vbCr
	myString = myString & "Vertical Scale Factor: " & myYScale & vbCr
	myString = myString & "Horizontal Translation: " & myXTranslate & vbCr
	myString = myString & "Vertical Translation: " & myYTranslate & vbCr & vbCr
	myString = myString & "Note that the Horizontal Translation and" & vbCr
	myString = myString & "Vertical Translation values are the location" & vbCr
	myString = myString & "of the center anchor in pasteboard coordinates."
	MsgBox myString
	Rem</fragment>
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myPage = myDocument.Pages.Item(1)
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array(72, 72, 144, 144)
End Function
Function myTeardown(myInDesign)
End Function