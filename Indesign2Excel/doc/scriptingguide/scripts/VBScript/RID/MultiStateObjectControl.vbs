Rem MultiStateObjectControl.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to create a multi-state object (MSO).
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
End Function
Function mySnippet(myInDesign)
    Set myDocument = myInDesign.Documents.Item(1)
    Set myPage = myDocument.Pages.Item(1)
    Set myColorA = myAddColor(myDocument, "DGC1_446a", idColorSpace.idCMYK, idColorModel.idProcess, Array(0, 100, 0, 50))
    Set myColorB = myAddColor(myDocument, "DGC1_446b", idColorSpace.idCMYK, idColorModel.idProcess, Array(100, 0, 50, 0))
    Set myColorC = myAddColor(myDocument, "DGC1_446c", idColorSpace.idCMYK, idColorModel.idProcess, Array(50, 30, 30, 0))
    Set myColorD = myAddColor(myDocument, "DGC1_446d", idColorSpace.idCMYK, idColorModel.idProcess, Array(70, 50, 0, 0))
    Rem <fragment>
    Rem Given a document "myDocument" and a page "myPage" and
    Rem four colors "myColorA," "myColorB," "myColorC," and "myColorD"...
    Set myMSO = myPage.MultiStateObjects.Add
    myMSO.name = "Spinner"
    myMSO.geometricBounds = Array(72, 72, 144, 144)
    Rem New multi-state objects contain two states when they're created. Add two more.
    myMSO.States.Item(1).name = "Up"
    myMSO.States.Item(2).name = "Right"
    Rem Add two more states.
    Set myDownState = myMSO.States.Add
    myDownState.name = "Down"
    Set myLeftState = myMSO.States.Add
    myLeftState.name = "Left"
    Rem Add page items to the states.
    Set myPolygon = myMSO.States.Item(1).Polygons.Add
    myPolygon.fillColor = myColorA
    myPolygon.strokeColor = myDocument.Swatches.Item("None")
    myPolygon.Paths.Item(1).EntirePath = Array(Array(72, 144), Array(144, 144), Array(108, 72))
    Set myPolygon = myMSO.States.Item(2).Polygons.Add
    myPolygon.fillColor = myColorB
    myPolygon.strokeColor = myDocument.Swatches.Item("None")
    myPolygon.Paths.Item(1).EntirePath = Array(Array(72, 72), Array(72, 144), Array(144, 108))
    Set myPolygon = myMSO.States.Item(3).Polygons.Add
    myPolygon.fillColor = myColorC
    myPolygon.strokeColor = myDocument.Swatches.Item("None")
    myPolygon.Paths.Item(1).EntirePath = Array(Array(72, 72), Array(108, 144), Array(144, 72))
    Set myPolygon = myMSO.States.Item(4).Polygons.Add
    myPolygon.fillColor = myColorD
    myPolygon.strokeColor = myDocument.Swatches.Item("None")
    myPolygon.Paths.Item(1).EntirePath = Array(Array(144, 72), Array(72, 108), Array(144, 144))
    Set myButton = myPage.Buttons.Add
    myButton.geometricBounds = Array(72, 72, 144, 144)
    Rem var myNormalState = myButton.states.item(0)
    Rem myNormalState.rectangles.add({geometricBounds:Array(72, 72, 144, 144)})
    Set myRolloverState = myButton.States.Add
    Set myRolloverRectangle = myRolloverState.Rectangles.Add
    myRolloverRectangle.geometricBounds = Array(72, 72, 144, 144)
    Set myFillTransparencySettings = myRolloverRectangle.StrokeTransparencySettings
    myFillTransparencySettings.DropShadowSettings.Mode = idShadowMode.idDrop
    myFillTransparencySettings.DropShadowSettings.Angle = 90
    myFillTransparencySettings.DropShadowSettings.XOffset = 0
    myFillTransparencySettings.DropShadowSettings.YOffset = 0
    myFillTransparencySettings.DropShadowSettings.Size = 6
    Set myClickState = myButton.States.Add
    Set myNextStateBehavior = myButton.GotoNextStateBehaviors.Add
    myNextStateBehavior.associatedMultiStateObject = myMSO
    myNextStateBehavior.behaviorEvent = idBehaviorEvents.idMouseDown
    myNextStateBehavior.enableBehavior = True
    myNextStateBehavior.loopsToNextOrPrevious = True
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

