Rem TransformExamples.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem A brief demonstration of the new transform method.
Rem 
Rem The transform method has the following parameters:
Rem 
Rem Coordinate Space
Rem 	CoordinateSpaces.pasteboardCoordinates
Rem 	CoordinateSpaces.parentCoordinates
Rem 	CoordinateSpaces.innerCoordinates
Rem		CoordinateSpaces.spreadCoordinates
Rem Definition: The coordinate space to use for the transformation.
Rem Note that none of these coordinate spaces correspond to the rulers
Rem you see in InDesign.
Rem 
Rem From
Rem 	An array of two numbers (in pasteboard coordinates)
Rem 	An AnchorPoint enumeration (a point on the object)
Rem 	An array of two numbers and an anchor point: [[x, y] AnchorPoint] 
Rem 	(specifies a point on the page/spread containing the anchor point)
Rem 	There are other ways to specify the transformation origin, but
Rem 	the above are the most important.
Rem Definition: The center of transformation.
Rem 
Rem With Matrix
Rem 	Transformation Matrix
Rem Definition: Specify the matrix used to transform the object.
Rem 
Rem Replacing Current
Rem 	Boolean
Rem Definition: If true, replace the current transformation values of the object
Rem with the values of the transformation matrix.
Rem 
Rem Considering Ruler Units
Rem 	Boolean
Rem Definition: If true, use the current ruler units for the anchor specification (if false, points are used).
Rem 
Rem Template for TransformationMatrices.Add
Rem Add([HorizontalScaleFactor], [VerticalScaleFactor], [ClockwiseShearAngle], [CounterclockwiseRotationAngle], [HorizontalTranslation], [VerticalTranslation], [MatrixValues])
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	myInDesign.TransformPreferences.WhenScaling = idWhenScalingOptions.idAdjustScalingPercentage
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myRectangle = myDocument.Pages.Item(1).Rectangles.Add
	myRectangle.GeometricBounds = Array(72, 72, 144, 288)
	Rem Rotate a rectangle "myRectangle" around its center point.
	set myRotateMatrix = myInDesign.transformationMatrices.add(, , , 27)
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myRotateMatrix
	MsgBox "Rotated around center anchor."
	myDocument.Undo
	Rem Scale a rectangle "myRectangle" around its center point.
	set myScaleMatrix = myInDesign.TransformationMatrices.Add(.5, .5)
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myScaleMatrix
	MsgBox "Scaled around center anchor."
	myDocument.Undo
	Rem Shear a rectangle "myRectangle" around its center point.
	set myShearMatrix = myInDesign.TransformationMatrices.Add(, , 30)
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myShearMatrix
	MsgBox "Sheared around center anchor."
	myDocument.Undo
	Rem Rotate a rectangle "myRectangle" around a specified ruler point ([72, 72]).
	Set myRotateMatrix = myInDesign.transformationMatrices.add(, , , 27)
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, Array(Array(72, 72), idAnchorPoint.idCenterAnchor), myRotateMatrix, , True
	MsgBox "Rotated around 72x, 72y."
	myDocument.Undo
	Rem Scale a rectangle "myRectangle" around a specified ruler point ([72, 72]).
	Set myScaleMatrix = myInDesign.transformationMatrices.add(.5, .5)
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, Array(Array(72, 72), idAnchorPoint.idCenterAnchor), myScaleMatrix, , True
	MsgBox "Scaled around 72x, 72y"
	myDocument.Undo
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function