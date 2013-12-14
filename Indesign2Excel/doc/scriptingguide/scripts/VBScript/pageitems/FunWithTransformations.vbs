Rem FunWithTransformations.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to use the ChangeCoordinates method.
main
Function main()
    Set myInDesign = CreateObject("InDesign.Application")
    mySetup myInDesign
    mySnippet myInDesign
    myTeardown myInDesign
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
    Set myDocument = myInDesign.documents.Item(1)
    Set myPage = myDocument.pages.Item(1)
    Set myPolygon = myDrawPolygon(myInDesign, myPage, Array(0, 0), 12, 144, True, 0.6)
    myTransformPath myInDesign, myPolygon, myPolygon.paths.Item(1), -0.75, -0.75, 15, True
    myTransformPath myInDesign, myPolygon, myPolygon.paths.Item(1), 0.5, 0.5, 75, True
    myTransformPath myInDesign, myPolygon, myPolygon.paths.Item(1), -1.25, -1.25, 45, True
    myTransformPath myInDesign, myPolygon, myPolygon.paths.Item(1), -0.5, -0.5, 90, True
    Rem</fragment>
End Function
Rem<fragment>
Function myTransformPath(myInDesign, myPageItem, myPath, myXScale, myYScale, myAngle, myDuplicatePath)
    myEntirePath = myPath.entirePath
    If UBound(myEntirePath(0)) <> 3 Then
        myEntirePath = myAddDirectionPoints(myEntirePath)
    End If
    Set myClockwiseMatrix = myInDesign.TransformationMatrices.Add(myXScale, myYScale, , -myAngle)
    Set myCounterClockwiseMatrix = myInDesign.TransformationMatrices.Add(myXScale, myYScale, , myAngle)
    For myCounter = 0 To UBound(myEntirePath)
        myPoint = myEntirePath(myCounter)
        myPoint(0) = myClockwiseMatrix.ChangeCoordinates(myPoint(0))
        myPoint(2) = myCounterClockwiseMatrix.ChangeCoordinates(myPoint(2))
        myEntirePath(myCounter) = myPoint
    Next
    If myDuplicatePath = True Then
        Set myNewPath = myPageItem.paths.Add
        myNewPath.PathType = idPathType.idClosedPath
        myNewPath.entirePath = myEntirePath
    Else
        myPath.entirePath = myEntirePath
    End If
End Function
Rem</fragment>
Function myAddDirectionPoints(myPath)
    ReDim myNewPath(0)
    For myCounter = 0 To UBound(myPath)-1
        If UBound(myPath(myCounter)) <> 3 Then
            ReDim myPointArray(2)
            For myPointCounter = 0 To 2
                myPointArray(myPointCounter) = myPath(myCounter)
            Next
        Else
            myPointArray = myPath(myCounter)
        End If
        myPush myNewPath, myPointArray, False
    Next
    myAddDirectionPoints = myNewPath
End Function
Rem General purpose routine for drawing regular polygons from their center point.
Function myDrawPolygon(myInDesign, myParent, myCenterPoint, myNumberOfPoints, myRadius, myStarPolygon, myStarInset)
    ReDim myPathPoints(0)
    myPoint = Array(0, 0)
    If myStarPolygon = True Then
        myNumberOfPoints = myNumberOfPoints * 2
    End If
    myInnerRadius = myRadius * myStarInset
    myAngle = 360 / myNumberOfPoints
    Set myRotateMatrix = myInDesign.TransformationMatrices.Add(, , , myAngle)
    Set myOuterTranslateMatrix = myInDesign.TransformationMatrices.Add(, , , , myRadius)
    Set myInnerTranslateMatrix = myInDesign.TransformationMatrices.Add(, , , , myInnerRadius)
    For myPointCounter = 0 To myNumberOfPoints - 1
        Rem Translate the point to the inner/outer radius.
        If ((myStarInset = 1) Or (myIsEven(myPointCounter) = True)) Then
            myTransformedPoint = myOuterTranslateMatrix.ChangeCoordinates(myPoint)
        Else
            myTransformedPoint = myInnerTranslateMatrix.ChangeCoordinates(myPoint)
        End If
        myTransformedPoint = myRotateMatrix.ChangeCoordinates(myTransformedPoint)
        myPush myPathPoints, myTransformedPoint, False
        Set myRotateMatrix = myRotateMatrix.rotateMatrix(myAngle)
    Next
    Rem Create a new polygon.
    Set myPolygon = myParent.polygons.Add()
    Rem Set the entire path of the polygon to the array we've created.
    myPolygon.paths.Item(1).entirePath = myPathPoints
    Rem If the center point is somewhere other than [0,0],
    Rem translate the polygon to the center point.
    If ((myCenterPoint(0) <> 0) Or (myCenterPoint(1) <> 0)) Then
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
    If myNumber Mod 2 = 0 Then
        myResult = True
    Else
        myResult = False
    End If
    myIsEven = myResult
End Function
Function mySetup(myInDesign)
    Set myDocument = myInDesign.documents.Add
    myInDesign.transformPreferences.whenScaling = idWhenScalingOptions.idAdjustScalingPercentage
    myDocument.viewPreferences.horizontalMeasurementUnits = idMeasurementUnits.idPoints
    myDocument.viewPreferences.verticalMeasurementUnits = idMeasurementUnits.idPoints
    myDocument.zeroPoint = Array(144, 144)
End Function
Function myTeardown(myInDesign)
End Function