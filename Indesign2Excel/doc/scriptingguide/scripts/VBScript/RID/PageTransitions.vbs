Rem PageTransitions.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to apply page transition options to a spread in an exported PDF or SWF document.
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
    myDocument.DocumentPreferences.PagesPerDocument = 12
    myDocument.DocumentPreferences.FacingPages = False
    myPageWidth = myDocument.DocumentPreferences.PageWidth
    myPageHeight = myDocument.DocumentPreferences.PageHeight
    Rem If the master spread contains more than a single
    Rem page, delete the additional pages.
    Set myMasterSpread = myDocument.MasterSpreads.Item(1)
    For myCounter = 1 To myMasterSpread.Pages.Count-1
        myMasterSpread.Pages.Item(1).Delete
    Next
    Set myTextFrame = myMasterSpread.Pages.Item(1).TextFrames.Add
    myTextFrame.geometricBounds = Array(0, 0, myPageHeight, myPageWidth)
    myTextFrame.Contents = idSpecialCharacters.idAutoPageNumber
    myTextFrame.TextFramePreferences.VerticalJustification = idVerticalJustification.idCenterAlign
    myTextFrame.Texts.Item(1).PointSize = 72
    myTextFrame.Texts.Item(1).Justification = idJustification.idCenterAlign
End Function
Function mySnippet(myInDesign)
    Set myDocument = myInDesign.Documents.Item(1)
    Rem <fragment>
    Rem Given a document "myDocument" containing at least two spreads...
    For myCounter = 1 To myDocument.Spreads.Count
        myDocument.Spreads.Item(myCounter).PageTransitionType = idPageTransitionTypeOptions.idPageTurnTransition
        Rem This page transition option does not support the pageTransitionDirection or pageTransitionDuration
        Rem properties. If you chose idPageTransitionTypeOptions.idWipeTransition (for example), you would be
        Rem able to set those options, as shown in the next two lines:
        Rem myDocument.spreads.item(myCounter).pageTransitionDirection = idPageTransitionDirectionOptions.idLeftToRight
        Rem myDocument.spreads.item(myCounter).pageTransitionDuration = idPageTransitionDurationOptions.idMedium
    Next
    Rem Export the document to SWF, and you'll see the page transitions.
    Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
