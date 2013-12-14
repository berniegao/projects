Rem ExportInteractivePDF.jsx
Rem An InDesign CS6 JavaScript
Rem
Rem Shows how to work with multiple timing lists in an animation.
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
    myDocument.ViewPreferences.RulerOrigin = idRulerOrigin.idPageOrigin
    myAddColor myDocument, "Gray", idColorSpace.idRGB, idColorModel.idProcess, Array(200, 200, 200)
    myDocument.DocumentPreferences.PagesPerDocument = 12
    myDocument.DocumentPreferences.FacingPages = False
    myPageWidth = myDocument.DocumentPreferences.PageWidth
    myPageHeight = myDocument.DocumentPreferences.PageHeight
    Rem If the master spread contains more than a single
    Rem page, delete the additional pages.
    Set myMasterSpread = myDocument.MasterSpreads.Item(1)
    For myCounter = 1 To myMasterSpread.Pages.Count - 1
        myMasterSpread.Pages.Item(1).Delete
    Next
    Set myTextFrame = myMasterSpread.Pages.Item(1).TextFrames.Add
    myTextFrame.geometricBounds = Array(0, 0, myPageHeight, myPageWidth)
    myTextFrame.Contents = idSpecialCharacters.idAutoPageNumber
    myTextFrame.TextFramePreferences.VerticalJustification = idVerticalJustification.idCenterAlign
    myTextFrame.Texts.Item(1).PointSize = 72
    myTextFrame.Texts.Item(1).Justification = idJustification.idCenterAlign
    myTextFrame.FillColor = myDocument.Colors.Item("Gray")
End Function
Function mySnippet(myInDesign)
    Set myDocument = myInDesign.Documents.Item(1)
    Rem <fragment>
    Rem Given a document "myDocument," add page transitions...
    For myCounter = 1 To myDocument.Spreads.Count
        myDocument.Spreads.Item(myCounter).PageTransitionType = idPageTransitionTypeOptions.idWipeTransition
        myDocument.Spreads.Item(myCounter).PageTransitionDirection = idPageTransitionDirectionOptions.idDown
        myDocument.Spreads.Item(myCounter).PageTransitionDuration = idPageTransitionDurationOptions.idMedium
    Next
    myInDesign.InteractivePDFExportPreferences.FlipPages = True
    myInDesign.InteractivePDFExportPreferences.FlipPagesSpeed = 5
    myInDesign.InteractivePDFExportPreferences.OpenInFullScreen = True
    myInDesign.InteractivePDFExportPreferences.InteractivePDFInteractiveElementsOption = idInteractivePDFInteractiveElementsOptions.idIncludeAllMedia
    Rem Export the document to PDF.
    Rem You'll have to fill in your own file path.
    myDocument.Export idExportFormat.idInteractivePDF, "C:\InteractivePDF.pdf", False
    Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myAddColor(myDocument, myColorName, myColorSpace, myColorModel, myColorValue)
    Rem Something like a try...catch for VBScript.
    On Error Resume Next
    Set myColor = myDocument.Colors.Item(myColorName)
    If Err.Number <> 0 Then
        Set myColor = myDocument.Colors.Add
        myColor.Name = myColorName
    End If
    Err.Clear
    On Error GoTo 0
    myColor.Space = myColorSpace
    myColor.Model = myColorModel
    myColor.ColorValue = myColorValue
    Set myAddColor = myColor
End Function