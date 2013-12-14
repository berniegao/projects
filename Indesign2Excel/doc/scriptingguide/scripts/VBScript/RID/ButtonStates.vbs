Rem ButtonStates.vbs
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
    myAddColor myDocument, "Blue", idColorSpace.idRGB, idColorModel.idProcess, Array(0, 0, 255)
End Function
Function mySnippet(myInDesign)
    Set myDocument = myInDesign.Documents.Item(1)
    Set myPage = myDocument.Pages.Item(1)
    Rem <fragment>
    Rem Given a page "myPage" in a document "myDocument," containing the colors
    Rem "Blue" and "Red"...
    Rem Make a button "from scratch."
    Set myButton = myPage.Buttons.Add
    myButton.GeometricBounds = Array(72, 72, 144, 144)
    myButton.Name = "GoToNextPageButton"
    Set myRightArrow = myButton.States.Item(1).Polygons.Add
    myRightArrow.fillColor = myDocument.Colors.Item("Red")
    myRightArrow.Paths.Item(1).EntirePath = Array(Array(72, 72), Array(144, 108), Array(72, 144))
    Rem Add the Rollover state.
    Set myRolloverState = myButton.States.Add
    Rem Add a shadow to the polygon in the Rollover state.
    Set myRolloverArrow = myRolloverState.Polygons.Add
    myRolloverArrow.FillColor = myDocument.Colors.Item("Red")
    myRolloverArrow.Paths.Item(1).EntirePath = Array(Array(72, 72), Array(144, 108), Array(72, 144))
    Set myFillTransparencySettings = myRolloverArrow.FillTransparencySettings
    myFillTransparencySettings.DropShadowSettings.Mode = idShadowMode.idDrop
    myFillTransparencySettings.DropShadowSettings.Angle = 90
    myFillTransparencySettings.DropShadowSettings.XOffset = 0
    myFillTransparencySettings.DropShadowSettings.YOffset = 0
    myFillTransparencySettings.DropShadowSettings.Size = 6
    Rem Add a shadow to the polygon in the Click state.
    Set myClickState = myButton.States.Add
    Set myClickArrow = myClickState.Polygons.Add
    myClickArrow.FillColor = myDocument.Colors.Item("Blue")
    myClickArrow.Paths.Item(1).EntirePath = Array(Array(72, 72), Array(144, 108), Array(72, 144))
    Rem Set the behavior for the button.
    Set myGoToNextPageBehavior = myButton.GotoNextPageBehaviors.Add
    myGoToNextPageBehavior.BehaviorEvent = idBehaviorEvents.idMouseUp
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
