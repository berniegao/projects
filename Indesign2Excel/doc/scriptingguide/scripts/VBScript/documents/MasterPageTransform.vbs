Rem MasterPageTransform.vbs
Rem An InDesign CS6 VBScript
Rem
Rem A brief demonstration of the master page overlay transformation.
Rem
Rem The InDesign.TransformationMatrices.Add function has the following parameters:
Rem
Rem HorizontalScaleFactor: The horizontal scale factor of the transformation matrix. Type: Double.
Rem VerticalScaleFactor: The vertical scale factor of the transformation matrix. Type: Double.
Rem ClockwiseShearAngle: The shear angle of the transformation matrix. Type: Double.
Rem CounterclockwiseRotationAngle: The rotation angle of the transformation matrix. Type: Double.
Rem HorizontalTranslation: The horizontal translation of the transformation matrix. Type: Double.
Rem VerticalTranslation: The vertical translation of the transformation matrix. Type: Double.
Rem MatrixValues: The values of the transformation matrix. Type: Array of 6 Doubles.
Rem MatrixMapping: The mapping the transformation matrix performs on the unit triangle. Type: Array of Array of 2 Arrays of 2 Doubles

main

Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function

Function mySetup(myInDesign)
	myInDesign.TransformPreferences.WhenScaling = idWhenScalingOptions.idAdjustScalingPercentage
	myInDesign.GeneralPreferences.ShowMasterPageOverlay = True

	Rem Create a new document.
	Set myDocument = myInDesign.Documents.Add()
	With myDocument.ViewPreferences
		.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
		.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	End With
	myDocument.TextDefaults.PointSize = 36

	Rem Write some text on master pages.
	myMasterName = myDocument.MasterSpreads.Item(1).Name
	Set myMasterPages = myDocument.MasterSpreads.Item(1).Pages
	With myMasterPages.Item(1).TextFrames.Add()
		.GeometricBounds = Array(36,36,108,576)
		.contents = "Text on left page of " & myMasterName
	End With
	With myMasterPages.Item(2).TextFrames.Add()
		.GeometricBounds = Array(36,648,108,1188)
		.contents = "Text on right page of " + myMasterName
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

	Rem Rotate master page overlay around its top-left corner.
	Set myRotateMatrix = myInDesign.TransformationMatrices.Add(, , , 27)
	myPages.Item(1).MasterPageTransform = myRotateMatrix
	
	Rem Scale master page overlay around its top-left corner.
	Set myScaleMatrix = myInDesign.TransformationMatrices.Add(0.5, 0.5)
	myPages.Item(2).MasterPageTransform = myScaleMatrix
	
	Rem Shear master page overlay around its top-left corner.
	Set myShearMatrix = myInDesign.TransformationMatrices.Add(, , 30)
	myPages.Item(3).MasterPageTransform = myShearMatrix
	
	Rem Translate master page overlay 1 inch right and 2 inches down.
	Set myTranslateMatrix = myInDesign.TransformationMatrices.Add(, , , , 72, 144)
	myPages.Item(4).MasterPageTransform = myTranslateMatrix
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function
