Rem ResolveLocation.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to use the ResolveLocation method.
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
	Set myRectangle = myPage.Groups.Item(1).Rectangles.Item(1)
	Rem Template for resolve():
	Rem PageItem.resolve (Location:any, in: CoordinateSpaces, ConsideringRulerUnits:boolean)
	Rem Get a ruler coordinate in pasteboard coordinates.
	Rem The following should work, but, due to a bug in InDesign CS5, 
	Rem it does not work in VBScript. It does work in VB6, VBA, and VB5.
	'myPageLocation = myRectangle.Resolve(Array(Array(72, 72), idAnchorPoint.idTopRightAnchor), idCoordinateSpaces.idPasteboardCoordinates, True)
	Rem resolve() returns an array (in this case, the array containins a single item).
	'myPageLocation = myPageLocation(0)
	'myPageLocationX = myPageLocation(0)
	'myPageLocationY = myPageLocation(1)
	'MsgBox "X: " & CStr(myPageLocation(0)) & vbCr & "Y: " & CStr(myPageLocation(1))
	Rem Because of the above problem, here's a workaround using JavaScript.
	myString = "var myRectangle = app.documents.item(0).pages.item(0).groups.item(0).rectangles.item(0);" & vbCr
	myString = myString & "var myPageLocation = myRectangle.resolve([[72, 72], AnchorPoint.topRightAnchor], CoordinateSpaces.pasteboardCoordinates, true);" & vbCr
	myString = myString & "alert(""X: "" + myPageLocation[0][0] + ""\rY: "" + myPageLocation[0][1])"
	myInDesign.DoScript myString, idScriptLanguage.idJavaScript
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