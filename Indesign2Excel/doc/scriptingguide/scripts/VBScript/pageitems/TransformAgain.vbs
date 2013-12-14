Rem TransformAgain.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Demonstrates the use of the TransformAgain method(s).
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
	set myRectangle = myPage.Rectangles.Item(1)
	myBounds = myRectangle.GeometricBounds
	myX1 = myBounds(1)
	myY1 = myBounds(0)
	Set myRectangleA = myPage.Rectangles.Add
	myRectangleA.GeometricBounds = Array(myY1-12, myX1-12, myY1+12, myX1+12)
	Set myTransformationMatrix = myInDesign.TransformationMatrices.add(, , , 45)
	myRectangleA.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	Set myRectangleB = myRectangleA.Duplicate
	myRectangleB.Transform idCoordinateSpaces.idPasteboardCoordinates, Array(Array(0,0), idAnchorPoint.idTopLeftAnchor), myTransformationMatrix, , True
	Set myRectangleC = myRectangleB.Duplicate
	myRectangleC.TransformAgain
	Set myRectangleD = myRectangleC.Duplicate
	myRectangleD.transformAgain
	Set myRectangleE = myRectangleD.Duplicate
	myRectangleE.TransformAgain
	set myRectangleF = myRectangleE.Duplicate
	myRectangleF.TransformAgain
	set myRectangleG = myRectangleF.Duplicate
	myRectangleG.TransformAgain
	set myRectangleH = myRectangleG.Duplicate
	myRectangleH.TransformAgain
	myRectangleA.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
	myRectangleD.TransformAgain
	myRectangleF.TransformAgain	
	myRectangleH.TransformAgain
	Rem</fragment>
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
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
End Function
Function myTeardown(myInDesign)
End Function