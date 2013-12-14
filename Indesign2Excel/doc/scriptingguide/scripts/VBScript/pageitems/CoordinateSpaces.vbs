Rem CoordinateSpaces.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Demonstrates the differences between the different coordinate
Rem systems (inner, parent, and pasteboard) used as parameters
Rem for the transform method.
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
	Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Groups.Item(1).Rectangles.Item(1)'
	myString = "The page contains a group which has been" & vbCr
	myString = myString & "rotated 45 degrees (counterclockwise)." & vbCr
	myString = myString & "The rectangle inside the group was" & vbCr
	myString = myString & "rotated 45 degrees counterclockwise" & vbCr
	myString = myString & "before it was added to the group." & vbCr & vbcr
	myString = myString & "Watch as we apply a series of scaling" & vbCr
	myString = myString & "operations in different coordinate spaces." & vbCr & vbCr
	myString = myString & "(You might need to move the alert aside" & vbCr
	myString = myString & "to see the effect of the transformations.)" & vbCr
	MsgBox myString
	Rem Create a transformation matrix with horizontal scale factor = 2.
	Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(2)
	Rem Transform the rectangle using inner coordinates.
	myRectangle.Transform idCoordinateSpaces.idInnerCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	Rem Select the rectangle and display an alert.
	myInDesign.Select myRectangle
	MsgBox "Transformed by inner coordinates."
	Rem Undo the transformation.
	myInDesign.Documents.Item(1).Undo
	Rem Transform using parent coordinates.
	myRectangle.Transform idCoordinateSpaces.idParentCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	myInDesign.Select myRectangle
	MsgBox "Transformed by parent coordinates."
	myInDesign.Documents.Item(1).Undo
	Rem Transform using pasteboard coordinates.
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	myInDesign.Select myRectangle
	MsgBox "Transformed by pasteboard coordinates."
	myInDesign.Documents.Item(1).Undo
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
	Rem Rotate the rectangle around its center point.
	Set myTransformationMatrix = myInDesign.TransformationMatrices.add(, , , 45)
	myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	Rem Add a series of ovals.
	Set myOvalA = myPage.Ovals.Add
	myOvalA.GeometricBounds = Array(-84, -84, -60, -60)
	Set myOvalB = myPage.Ovals.Add
	myOvalB.GeometricBounds = Array(84, -84, 60, -60)
	Set myOvalC = myPage.Ovals.Add
	myOvalC.GeometricBounds = Array(-84, 84, -60, 60)
	Set myOvalD = myPage.Ovals.Add
	myOvalD.GeometricBounds = Array(84, 84, 60, 60)
	Rem Group the rectangle and the ovals.
	Set myGroup = myPage.Groups.add(Array(myRectangle, myOvalA, myOvalB, myOvalC, myOvalD))
	Rem Rotate the group.
	myGroup.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
End Function
Function myTeardown(myInDesign)
End Function