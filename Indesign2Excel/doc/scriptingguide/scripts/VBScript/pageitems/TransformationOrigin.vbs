Rem TransformationOrigin.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Demonstrates different way to specify the point used for the center of transformation.
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
	Set myPage = myInDesign.Documents.Item(1).Pages.Item(1)
	Set myRectangle = myPage.Rectangles.Item(1)
	myString = "Watch as we rotate the rectangle using different anchor points," & vbCr
	myString = myString & "bounds types, and coordinate spaces." & vbCr & vbCr
	myString = myString & "(You might need to move the alert aside" & vbCr
	myString = myString & "to see the effect of the transformations.)"
	MsgBox myString
	Set myNewRectangle = myRectangle.Duplicate
	Rem Create a transformation matrix with counterclockwise rotation angle = 30.
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(, , , 30)
	Rem Rotate around the duplicated rectangle's center point.
	myNewRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	Rem Select the rectangle and display an alert.
	myInDesign.Select myNewRectangle
	MsgBox "Transformed around center anchor."
	Rem Undo the transformation.
	myInDesign.Documents.Item(1).Undo
	Rem Rotate the rectangle around the ruler location [-100, -100]. 
	Rem Note that the anchor point specified here specifes the page
	Rem containing the point--*not* that transformation point itself. 
	Rem The transformation gets the ruler coordinate [-100, -100] based
	Rem on that page. Setting the considerRulerUnits parameter to true 
	Rem makes certain that the transformation uses the current
	Rem ruler units.
	myNewRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, Array(Array(-100, -100), idAnchorPoint.idTopLeftAnchor), myTransformationMatrix, , True
	Rem Move the page guides to reflect the transformation point.
	myPage.Guides.Item(1).Location = -100
	myPage.Guides.Item(2).Location = -100
	Rem Select the rectangle and display an alert.
	myInDesign.Select myNewRectangle
	MsgBox "Rotated around -100x, -100y."
	Rem Undo the transformation and the guide moves.
	myInDesign. Documents.Item(1).Undo
	myInDesign. Documents.Item(1).Undo
	myInDesign. Documents.Item(1).Undo
	myNewRectangle.StrokeWeight = 12
	myBounds = myNewRectangle.visibleBounds
	Rem Move the page guides to reflect the transformation point.
	myPage.Guides.Item(1).Location = myBounds(1)
	myPage.Guides.Item(2).Location = myBounds(2)
	Rem Rotate the rectangle around the outer edge of the lower left corner.
	myNewRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, Array(idAnchorPoint.idBottomLeftAnchor, idBoundingBoxLimits.idOuterStrokeBounds), myTransformationMatrix, idMatrixContent.idRotationValue, True
	Rem Select the rectangle and display an alert.
	myInDesign.Select myNewRectangle
	MsgBox "Rotated around the outside edge of the bottom left corner."
	Rem Undo the transformation and the guide moves.
	myInDesign. Documents.Item(1).Undo
	myInDesign. Documents.Item(1).Undo
	myInDesign. Documents.Item(1).Undo
	myInDesign. Documents.Item(1).Undo
	Rem</fragment>
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myInDesign.TransformPreferences.WhenScaling = idWhenScalingOptions.idAdjustScalingPercentage
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints	
	Set myPage = myDocument.Pages.Item(1)
	myPageBounds = myPage.Bounds
	myPageXCenter = (myPageBounds(3)-myPageBounds(1))/2
	myPageYCenter = (myPageBounds(2)-myPageBounds(0))/2
	myDocument.ZeroPoint = Array(myPageXCenter, myPageYCenter)
	Set myGuide = myPage.Guides.Add
	myGuide.Orientation = idHorizontalOrVertical.idHorizontal
	myGuide.Location = 0
	Set myGuide = myPage.Guides.Add
	myGuide.Orientation = idHorizontalOrVertical.idVertical
	myGuide.Location = 0
	Rem Create a rectangle.
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array(- 72, - 72, 72, 72)
	myRectangle.StrokeColor = "Black"
End Function
Function myTeardown(myInDesign)
End Function