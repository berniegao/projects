Rem FlashExport.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to export to a Flash file.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.documents.add()
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myPage = myDocument.Pages.Item(1)
	myX = myDocument.DocumentPreferences.PageWidth/2
	myY = myDocument.DocumentPreferences.PageHeight/2
	Rem Draw the polygon at the center of the page.
Set myPolygon = myDrawPolygon(myInDesign, myPage, Array(myX, myY), 5, 72, true, .38196601125011)
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.documents.item(1)
	Rem <fragment>
	Rem Set SWF export preferences
	myInDesign.swfExportPreferences.FitMethod  = idFitMethodSettings.idFitGivenScalePercentage
	myInDesign.swfExportPreferences.FitOption = idFitDimension.idFit1024x768
	myInDesign.swfExportPreferences.FitScale = 100
	myInDesign.swfExportPreferences.FitWidthAndHeight = Array(1024, 768)
	myInDesign.swfExportPreferences.PageRange = "1"
	myInDesign.swfExportPreferences.DynamicDocumentExportReaderSpreads = True
	myInDesign.swfExportPreferences.RasterizePages = False
	myInDesign.swfExportPreferences.GenerateHTML = False
	myInDesign.swfExportPreferences.ViewSWFAfterExporting = False
	myInDesign.swfExportPreferences.TextExportPolicy = idDynamicDocumentsTextExportPolicy.idLive
	myInDesign.swfExportPreferences.IncludeInteractivePageCurl = True
	myInDesign.swfExportPreferences.RasterCompression = idRasterCompressionOptions.idLosslessCompression
	myInDesign.swfExportPreferences.JPEGQualityOptions = idDynamicDocumentsJPEGQualityOptions.idMaximum
	myInDesign.swfExportPreferences.CurveQuality = idSWFCurveQualityValue.idMaximum
	myInDesign.swfExportPreferences.RasterResolution = 72
	myInDesign.swfExportPreferences.ResamplingType = idSampling.idNone
	myInDesign.swfExportPreferences.ResamplingThreshold = 72
	myInDesign.swfExportPreferences.UseNetworkAccess = False
	Rem Export as .swf. You'll have to fill in your own file path.
    myFilePath = "c:\test.swf"
	myDocument.export idExportFormat.idswf, myFilePath, False
	Rem Set XFL export preferences.
	myInDesign.xflExportPreferences.FitMethod = idFitMethodSettings.idFitGivenScalePercentage
	myInDesign.xflExportPreferences.FitOption = idFitDimension.idFit1024x768
	myInDesign.xflExportPreferences.FitScale =100
	myInDesign.xflExportPreferences.FitWidthAndHeight = Array(1024, 768)
	myInDesign.xflExportPreferences.PageRange = "1"
	myInDesign.xflExportPreferences.DynamicDocumentExportReaderSpreads = False
	myInDesign.xflExportPreferences.RasterizePages = False
	myInDesign.xflExportPreferences.FlattenTransparency = False
	myInDesign.xflExportPreferences.TextExportPolicy = idDynamicDocumentsTextExportPolicy.idLive
	myInDesign.xflExportPreferences.RasterFormat = idXFLRasterizeFormatOptions.idjpeg
	myInDesign.xflExportPreferences.JPEGQualityOptions = idDynamicDocumentsJPEGQualityOptions.idMaximum
	myInDesign.xflExportPreferences.RasterResolution = 72
	myInDesign.xflExportPreferences.ResamplingType = idSampling.idNone
	myInDesign.xflExportPreferences.ResamplingThreshold = 72
    myFilePath = myDesktopPath & "/test.xfl"
	Rem Export as .xfl. You'll have to fill in your own file path.
    myFilePath = "c:\test.xfl"
	myDocument.export idExportFormat.idPackagedXFL, myFilePath, False
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
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
    Rem template for transform
    Rem Add([HorizontalScaleFactor], [VerticalScaleFactor], [ClockwiseShearAngle], [CounterclockwiseRotationAngle], [HorizontalTranslation], [VerticalTranslation], [MatrixValues]) As TransformationMatrix
    Rem Add(, , , , X)
    Set myRotateMatrix = myInDesign.TransformationMatrices.Add(, , , myAngle)
    Set myOuterTranslateMatrix = myInDesign.TransformationMatrices.Add(, , , , myRadius)
    Set myInnerTranslateMatrix = myInDesign.TransformationMatrices.Add(, , , , myInnerRadius)
    For myPointCounter = 1 To myNumberOfPoints
        Rem Translate the point to the inner/outer radius.
        If ((myStarInset = 1) Or (myIsEven(myPointCounter) = True)) Then
            myTransformedPoint = myOuterTranslateMatrix.ChangeCoordinates(myPoint)
        Else
            myTransformedPoint = myInnerTranslateMatrix.ChangeCoordinates(myPoint)
        End If
        myTransformedPoint = myRotateMatrix.ChangeCoordinates(myTransformedPoint)
        myPush myPathPoints, myTransformedPoint
        Set myRotateMatrix = myRotateMatrix.RotateMatrix(myAngle)
    Next
    Rem Create a new polygon.
    Set myPolygon = myParent.Polygons.Add
    Rem Set the entire path of the polygon to the array we've created.
    myPolygon.Paths.Item(1).EntirePath = myPathPoints
    Rem If the center point is somewhere other than [0,0],
    Rem translate the polygon to the center point.
    If (myCenterPoint(0) <> 0) Or (myCenterPoint(1) <> 0) Then
        Set myTranslateMatrix = myInDesign.TransformationMatrices.Add(, , , , myCenterPoint(0), myCenterPoint(1))
        myPolygon.Transform idCoordinateSpaces.idPasteboardCoordinates, idAnchorPoint.idCenterAnchor, myTranslateMatrix
    End If
    Set myDrawPolygon = myPolygon
End Function
Rem Generic function for adding a value to an array.
Function myPush(myArray, myValue)
	If Not (IsEmpty(myArray(0))) Then
	    ReDim Preserve myArray(UBound(myArray) + 1)
	End If
	If IsObject(myValue) = True Then
		Set myArray(UBound(myArray)) = myValue
	Else
		myArray(UBound(myArray)) = myValue
	End If
	myPush = myArray
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
Rem </fragment>
Function myTeardown(myInDesign)
End Function