Rem Reframe.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to use the reframe method.
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
    Set myPage = myDocument.Pages.Item(1)
    Set myRectangle = myPage.Rectangles.Add
    myRectangle.GeometricBounds = Array(72, 72, 144, 144)
    myRectangle.StrokeWeight = 4
    Set myTransformationMatrix = myInDesign.TransformationMatrices.Add(, , , 30)
    myRectangle.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTransformationMatrix
End Function
Function mySnippet(myInDesign)
    Rem PageItem.reframe (in:any, opposingCorners:Array of any)
    Rem Move the bounding box of the page item
    Rem in: Data Type: any
    Rem The bounding box to resize. Can accept: CoordinateSpaces enumerator or Ordered array containing coordinateSpace:CoordinateSpaces enumerator, boundsKind:BoundingBoxLimits enumerator.
    Rem opposingCorners: Data Type: Array of any
    Rem Opposing corners of new bounding box in the given coordinate space
    Set myRectangle = myInDesign.Documents.Item(1).Pages.Item(1).Rectangles.Item(1)
    Rem <fragment>
    Rem Given a reference to a rectangle "myRectangle"...
    Set myDuplicate = myRectangle.Duplicate
    myTopLeft = myDuplicate.Resolve(idAnchorPoint.idTopLeftAnchor, idCoordinateSpaces.idInnerCoordinates, False)(0)
    myBottomRight = myDuplicate.Resolve(idAnchorPoint.idBottomRightAnchor, idCoordinateSpaces.idInnerCoordinates, False)(0)
    myWidth = myBottomRight(0) - myTopLeft(0)
    myDuplicate.Reframe idCoordinateSpaces.idInnerCoordinates, Array(Array(myTopLeft(0) + myWidth, myTopLeft(1)), Array(myBottomRight(0) + myWidth, myBottomRight(1)))
    Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function

