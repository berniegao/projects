Rem Transform.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem A few "helper" functions for working with transformations.
Rem
Rem Template for TransformationMatrices.Add
Rem Add([HorizontalScaleFactor], [VerticalScaleFactor], [ClockwiseShearAngle], [CounterclockwiseRotationAngle], [HorizontalTranslation], [VerticalTranslation], [MatrixValues])
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
End Function
Function mySetup(myInDesign)
	myInDesign.TransformPreferences.WhenScaling = idWhenScalingOptions.idAdjustScalingPercentage
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = Array(72, 72, 288, 288)
	myTextFrame.Contents = idTextFrameContents.idPlaceholderText
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Rem Given a document with a text frame on page 1...
	Set myTextFrame = myInDesign.Documents.Item(1).Pages.Item(1).TextFrames.Item(1)
	myString = "The page contains an example text frame." & vbCr & vbCr
	myString = myString & "You  might have to drag the alert out" & vbCr
	myString = myString & "of the way to see the effect of the transformation."	
	MsgBox myString
	myRotate myInDesign, myTextFrame, idAnchorPoint.idCenterAnchor, 45, False
	MsgBox "Rotated 45 degrees."
	Rem Undo the transformation.
	myInDesign.Documents.Item(1).Undo
	myScale myInDesign, myTextFrame, idAnchorPoint.idCenterAnchor, .5, .5, False
	MsgBox "Scaled by 50 percent."
	myInDesign.Documents.Item(1).Undo
	myTranslate myInDesign, myTextFrame, idAnchorPoint.idCenterAnchor, 72, 72, False
	MsgBox "Moved by 72 points in both directions."
	myInDesign.Documents.Item(1).Undo
	myShear myInDesign, myTextFrame, idAnchorPoint.idCenterAnchor, 15, False
	MsgBox "Sheared by 15 degrees."
	myInDesign.Documents.Item(1).Undo
	myRotate myInDesign, myTextFrame, Array(Array(92, 92), idAnchorPoint.idTopLeftAnchor), 45, True
	MsgBox "Rotated 45 degrees around ruler coordinate [92, 92]."
	myInDesign.Documents.Item(1).Undo
	myScale myInDesign, myTextFrame,  Array(Array(92, 92), idAnchorPoint.idTopLeftAnchor), 2, 2,True
	MsgBox "Scaled by 200 percent around  ruler coordinate [92, 92]."
	myInDesign.Documents.Item(1).Undo
	Rem</fragment>
End Function
Rem<fragment>
Function myRotate(myInDesign, myObject, myAnchor, myAngle, myConsiderRulerUnits)
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(, , , myAngle)
	myObject.Transform idCoordinateSpaces.idPasteboardCoordinates, myAnchor, myTransformationMatrix, , myConsiderRulerUnits
End Function
Function myScale(myInDesign, myObject, myAnchor, myXScale, myYScale, myConsiderRulerUnits)
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(myXScale, myYScale)
	myObject.Transform idCoordinateSpaces.idPasteboardCoordinates, myAnchor, myTransformationMatrix, , myConsiderRulerUnits
End Function
Function myTranslate(myInDesign, myObject, myAnchor, myXTranslate, myYTranslate, myConsiderRulerUnits)
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(, , , , myXTranslate, myYTranslate)
	myObject.Transform idCoordinateSpaces.idPasteboardCoordinates, myAnchor, myTransformationMatrix, , myConsiderRulerUnits
End Function 
Function myShear(myInDesign, myObject, myAnchor, myShearAngle, myConsiderRulerUnits)
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(, , myShearAngle)
	myObject.Transform idCoordinateSpaces.idPasteboardCoordinates, myAnchor, myTransformationMatrix, , myConsiderRulerUnits
End Function
Rem</fragment>