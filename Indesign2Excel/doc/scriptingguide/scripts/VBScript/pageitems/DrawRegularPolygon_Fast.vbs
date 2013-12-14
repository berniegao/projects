Rem DrawRegularPolygon_Fast.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to draw a regular polygon around a specific location
Rem using the entirePath property to set path point locations.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	myPageWidth = myDocument.DocumentPreferences.PageWidth
	myPageHeight = myDocument.DocumentPreferences.PageHeight
	Rem Set the zero point to the center of the page.
	myDocument.ZeroPoint = Array(myPageWidth/2, myPageHeight/2)
End Function
Function mySnippet(myInDesign)
	ReDim myArray(0)
	Rem You've probably noticed that drawing regular polygons by specifying their
	Rem geometric bounds often produces polygons that are squashed or stretched.
	Rem The following example shows how to draw a regular polygon from its center point.
	Set myDocument = myInDesign.Documents.Item(1)
	Rem <fragment>
	Rem Draw a regular polygon around (0,0).
	Rem The following parameters set the size and shape of the polygon.
	PI = 3.14159265358979
	myCenterPoint = Array(0,0)
	myRadius = 72
	myNumberOfPoints = 7
	myStarInset = 40
	Rem myStartingPoint ensures that the top of the star is at 90 degrees vertically from the origin.
	myStartingPoint = 270*(PI/180)	
	Rem Create a new polygon with the number of points and star inset that you want.
	Rem Save the current polygon preference.
	myOldNumberOfSides = myInDesign.PolygonPreferences.NumberOfSides
	If myStarInset <> 100 Then
		myOldStarInset = myInDesign.PolygonPreferences.InsetPercentage
		myInDesign.PolygonPreferences.InsetPercentage = myStarInset
	End If
	myInDesign.PolygonPreferences.NumberOfSides = myNumberOfPoints
	Set myPolygon = myDocument.Pages.Item(1).Polygons.Add
	Rem Restore the old polygon preference.
	myInDesign.PolygonPreferences.NumberOfSides = myOldNumberOfSides
	If myStarInset <> 100 Then
		myInDesign.PolygonPreferences.InsetPercentage = myOldStarInset
	End If
	If myStarInset = 100 Then
		myStarInset = 1
	Else
		myNumberOfPoints = myNumberOfPoints * 2
		myStarInset = myStarInset * .01
		myInsideRadius = myRadius * myStarInset
	End If
	myAngleIncrement = (360/myNumberOfPoints)*(PI/180)
	Rem Now we have a polygon with the correct number of points.
	Rem Create an array to hold the point positions for all of the points on the path.
	for myPointCounter = 0 To myNumberOfPoints -1
		myAngle = myStartingPoint + (myAngleIncrement*myPointCounter)
		If ((myStarInset = 1) Or (myIsEven(myPointCounter) = True)) Then
			myX = myCenterPoint(0) + myRadius * Cos(myAngle)
			myY = myCenterPoint(1) + myRadius * Sin(myAngle)
		Else
			myX = myCenterPoint(0) + myInsideRadius * Cos(myAngle)
			myY = myCenterPoint(1) + myInsideRadius * Sin(myAngle)
		End If
		Rem Move the anchor point to the calculated location.
		myPush myArray, Array(myX, myY), False
	Next
	myPolygon.Paths.Item(1).EntirePath = myArray
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem Generic function for adding a value to an array.
Function myPush(myArray, myValue, myValueIsObject)
    If Not (IsEmpty(myArray(0))) Then
        ReDim Preserve myArray(UBound(myArray) + 1)
    End If
    If myValueIsObject = True Then
        Set myArray(UBound(myArray)) = myValue
    Else
        myArray(UBound(myArray)) = myValue
    End If
End Function
Rem This function returns true if myNumber is even, false if it is not.
Function myIsEven(myNumber)
	myResult = (myNumber Mod 2)
	If myResult = 0 Then
		myResult = True
	Else
		myResult = False
	End If
	myIsEven = myResult
End Function