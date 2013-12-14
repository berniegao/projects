Rem PageTransform.vbs
Rem An InDesign CS6 VBScript
Rem
Rem A brief demonstration of the page transform method.

main

Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function

Function mySetup(myInDesign)
	myInDesign.TransformPreferences.WhenScaling = idWhenScalingOptions.idAdjustScalingPercentage

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

	Rem Rotate a page around its center point.
	Set myRotateMatrix = myInDesign.TransformationMatrices.Add(, , , 27)
	myTransform myPages.Item(1), myRotateMatrix

	Rem Scale a page around its center point.
	Set myScaleMatrix = myInDesign.TransformationMatrices.Add(0.8, 0.8)
	myTransform myPages.Item(2), myScaleMatrix
	
	Rem Shear a page around its center point.
	Set myShearMatrix = myInDesign.TransformationMatrices.Add(, , 30)
	myTransform myPages.Item(3), myShearMatrix
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function

Rem<fragment>
Function myTransform(myPage, myTransformationMatrix)
	myPage.Transform idCoordinateSpaces.idPasteboardCoordinates, _
					idAnchorPoint.idCenterAnchor, _
					myTransformationMatrix
End Function
Rem</fragment>