Rem ChangeCoordinates.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to use the ChangeCoordinates method to transform a point.
main
Function main()
    Set myInDesign = CreateObject("InDesign.Application")
    mySetup myInDesign
    mySnippet myInDesign
    myTeardown myInDesign
End Function
Function mySnippet(myInDesign)
    Set myPage = myInDesign.Documents.Item(1).Pages.Item(1)
    Rem<fragment>
    Rem Given a page "myPage"...
    Set myPolygon = myDrawPolygon(myInDesign, myPage, Array(0, 0), 12, 72, True, 0.5)
    'Set myPolygon = myDrawPolygon(myInDesign, myPage, Array(0, 0), 4, 72, False, 0.5)
    Rem</fragment>
End Function
Function mySetup(myInDesign)
    Set myDocument = myInDesign.Documents.Add
    myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
    myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
    myDocument.ZeroPoint = Array(144, 144)
    Set myPage = myDocument.Pages.Item(1)
End Function
Function myTeardown(myInDesign)
End Function
Rem<fragment>
Rem General purpose routine for drawing regular polygons from their center point.
Function myDrawPolygon(myInDesign, myParent, myCenterPoint, myNumberOfPoints, myRadius, myStarPolygon, myStarInset)
    ReDim myArray(0)
    myPoint = Array(0, 0)
    If myStarPolygon = True Then
        myNumberOfPoints = myNumberOfPoints * 2
    End If
    myInnerRadius = myRadius * myStarInset
    myAngle = 360 / myNumberOfPoints
    Rem template for transform
    Rem Add([HorizontalScaleFactor], [VerticalScaleFactor], [ClockwiseShearAngle], [CounterclockwiseRotationAngle], [HorizontalTranslation], [VerticalTranslation], [MatrixValues]) As TransformationMatrix
    Rem Add(, , , , X)
    Set myRotateMatrix = myInDesign.TransformationMatrices.Add()
    Set myRotateMatrix = myRotateMatrix.RotateMatrix(CDbl(myAngle))
    Set myOuterTranslateMatrix = myInDesign.TransformationMatrices.Add()
    Set myOuterTranslateMatrix = myOuterTranslateMatrix.translateMatrix(myRadius, 0)    
    Set myInnerTranslateMatrix = myInDesign.TransformationMatrices.Add()
    Set myInnerTranslateMatrix = myInnerTranslateMatrix.translateMatrix(myInnerRadius, 0)
    For myPointCounter = 0 To myNumberOfPoints - 1
        Rem Translate the point to the inner/outer radius.
        If ((myStarInset = 1) Or (myIsEven(myPointCounter) = True)) Then
            myTransformedPoint = myOuterTranslateMatrix.ChangeCoordinates(myPoint)
        Else
            myTransformedPoint = myInnerTranslateMatrix.ChangeCoordinates(myPoint)
        End If
        myTransformedPoint = myRotateMatrix.ChangeCoordinates(myTransformedPoint)
        myPush myArray, myTransformedPoint, False
        Set myRotateMatrix = myRotateMatrix.RotateMatrix(CDbl(myAngle))
    Next
    Rem Create a new polygon.
    Set myPolygon = myParent.Polygons.Add
    Rem Set the entire path of the polygon to the array we've created.
    myPolygon.Paths.Item(1).EntirePath = myArray
    Rem If the center point is somewhere other than [0,0],
    Rem translate the polygon to the center point.
    If (myCenterPoint(0) <> 0) Or (myCenterPoint(1) <> 0) Then
        Set myTranslateMatrix = myInDesign.TransformationMatrices.Add(, , , , myCenterPoint(0), myCenterPoint(1))
        myPolygon.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTranslateMatrix
    End If
    Set myDrawPolygon = myPolygon
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
    myResult = myNumber Mod 2
    If myResult = 0 Then
        myResult = True
    Else
        myResult = False
    End If
    myIsEven = myResult
End Function
Rem</fragment>
