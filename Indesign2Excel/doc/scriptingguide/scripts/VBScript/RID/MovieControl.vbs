Rem MovieControl.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to make a button.
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
    myAddColor myDocument, "Red", idColorSpace.idRGB, idColorModel.idProcess, Array(255, 0, 0)
    myAddColor myDocument, "Gray", idColorSpace.idRGB, idColorModel.idProcess, Array(200, 200, 200)
End Function
Function mySnippet(myInDesign)
    Set myDocument = myInDesign.Documents.Item(1)
    Set myPage = myDocument.Pages.Item(1)
    Rem <fragment>
    Rem Given a page "myPage" in a document "myDocument,"
    Rem containing the colors "Gray" and "Red"...
    Set myFrame = myPage.Rectangles.Add
    myFrame.geometricBounds = Array(72, 72, 288, 288)
    Rem Import a movie file (you'll have to provide a valid file path on your system)
    myFrame.Place "c:\movie.avi"
    Rem Create the movie "Start" button.
    Set myPlayButton = myPage.Buttons.Add
    myPlayButton.geometricBounds = Array(294, 186, 354, 282)
    myPlayButton.name = "PlayMovieButton"
    Set myRightArrow = myPlayButton.States.Item(1).Polygons.Add
    myRightArrow.fillColor = myDocument.Colors.Item("Gray")
    myRightArrow.Paths.Item(1).EntirePath = Array(Array(186, 294), Array(186, 354), Array(282, 324))
    Rem Add the Rollover state.
    Set myRolloverState = myPlayButton.States.Add
    Rem Add a shadow to the polygon in the Rollover state.
    Set myRolloverArrow = myRolloverState.Polygons.Add
    myRolloverArrow.fillColor = myDocument.Colors.Item("Gray")
    myRolloverArrow.Paths.Item(1).EntirePath = Array(Array(186, 294), Array(186, 354), Array(282, 324))
    Set myFillTransparencySettings = myRolloverArrow.FillTransparencySettings
    myFillTransparencySettings.DropShadowSettings.Mode = idShadowMode.idDrop
    myFillTransparencySettings.DropShadowSettings.Angle = 90
    myFillTransparencySettings.DropShadowSettings.XOffset = 0
    myFillTransparencySettings.DropShadowSettings.YOffset = 0
    myFillTransparencySettings.DropShadowSettings.Size = 6
    Rem Add a shadow to the polygon in the Click state.
    set myClickState = myPlayButton.States.Add()
    Set myClickArrow = myClickState.Polygons.Add
    myClickArrow.fillColor = myDocument.Colors.Item("Red")
    myClickArrow.Paths.Item(1).EntirePath = Array(Array(186, 294), Array(186, 354), Array(282, 324))
    Rem Set the behavior for the button.
    Set myMovieStartBehavior = myPlayButton.MovieBehaviors.Add
    myMovieStartBehavior.MovieItem = myFrame.Movies.Item(1)
    myMovieStartBehavior.behaviorEvent = idBehaviorEvents.idMouseUp
    myMovieStartBehavior.operation = idMoviePlayOperations.idPlay
    Rem Create the movie "Stop" button.
    Set myStopButton = myPage.Buttons.Add
    myStopButton.geometricBounds = Array(294, 78, 354, 174)
    myStopButton.name = "StopMovieButton"
    Set myNormalRectangle = myStopButton.States.Item(1).Rectangles.Add
    myNormalRectangle.geometricBounds = Array(294, 78, 354, 174)
    myNormalRectangle.fillColor = myDocument.Colors.Item("Gray")
    Set myRolloverState = myStopButton.States.Add
    Set myRolloverRectangle = myRolloverState.Rectangles.Add
    myRolloverRectangle.geometricBounds = Array(294, 78, 354, 174)
    myRolloverRectangle.fillColor = myDocument.Colors.Item("Gray")
    Set myFillTransparencySettings = myRolloverRectangle.FillTransparencySettings
    myFillTransparencySettings.DropShadowSettings.Mode = idShadowMode.idDrop
    myFillTransparencySettings.DropShadowSettings.Angle = 90
    myFillTransparencySettings.DropShadowSettings.XOffset = 0
    myFillTransparencySettings.DropShadowSettings.YOffset = 0
    myFillTransparencySettings.DropShadowSettings.Size = 6
    Set myClickState = myStopButton.States.Add
    Set myClickRectangle = myClickState.Rectangles.Add
    myClickRectangle.geometricBounds = Array(294, 78, 354, 174)
    myClickRectangle.fillColor = myDocument.Colors.Item("Red")
    Set myMovieStopBehavior = myStopButton.MovieBehaviors.Add
    myMovieStopBehavior.MovieItem = myFrame.Movies.Item(1)
    myMovieStopBehavior.behaviorEvent = idBehaviorEvents.idMouseUp
    myMovieStopBehavior.operation = idMoviePlayOperations.idStop
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
        myColor.name = myColorName
    End If
    Err.Clear
    On Error GoTo 0
    myColor.Space = myColorSpace
    myColor.Model = myColorModel
    myColor.ColorValue = myColorValue
    Set myAddColor = myColor
End Function
