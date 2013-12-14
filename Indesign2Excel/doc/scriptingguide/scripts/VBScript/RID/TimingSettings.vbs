Rem TimingSettings.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to control the timing of an animation.
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
    Set myColorA = myAddColor(myDocument, "DGC1_446a", idColorSpace.idCMYK, idColorModel.idProcess, Array(0, 100, 0, 50))
    Set myColorB = myAddColor(myDocument, "DGC1_446b", idColorSpace.idCMYK, idColorModel.idProcess, Array(100, 0, 50, 0))
    Set myColorC = myAddColor(myDocument, "DGC1_446c", idColorSpace.idCMYK, idColorModel.idProcess, Array(50, 30, 30, 0))
    Rem <fragment>
    Rem Given a document "myDocument" and a page "myPage" and the color "myColorA",
    Rem "myColorB", and "myColorC"...
    Rem Add a page items to animate.
    Set myPolygonA = myPage.Polygons.Add
    myPolygonA.fillColor = myColorA
    myPolygonA.strokeColor = myDocument.Swatches.Item("None")
    myPolygonA.Paths.Item(1).EntirePath = Array(Array(72, 72), Array(72, 144), Array(144, 108))
    Set myPolygonB = myPage.Polygons.Add
    myPolygonB.fillColor = myColorB
    myPolygonB.strokeColor = myDocument.Swatches.Item("None")
    myPolygonB.Paths.Item(1).EntirePath = Array(Array(72, 72), Array(72, 144), Array(144, 108))
    Set myPolygonC = myPage.Polygons.Add
    myPolygonC.fillColor = myColorC
    myPolygonC.strokeColor = myDocument.Swatches.Item("None")
    myPolygonC.Paths.Item(1).EntirePath = Array(Array(72, 72), Array(72, 144), Array(144, 108))
    Rem Create a motion path.
    myMotionPathPoints = Array(Array(Array(Array(108, 108), Array(108, 108), Array(108, 108)), Array(Array(516, 108), Array(516, 108), Array(516, 108))), True)
    Rem Set animation preferences for the polygons.
    myPolygonA.AnimationSettings.Duration = 2
    myPolygonA.AnimationSettings.MotionPathPoints = myMotionPathPoints
    myPolygonB.AnimationSettings.Duration = 2
    myPolygonB.AnimationSettings.MotionPathPoints = myMotionPathPoints
    myPolygonC.AnimationSettings.Duration = 2
    myPolygonC.AnimationSettings.MotionPathPoints = myMotionPathPoints
    Set myTimingSettings = myPage.Parent.TimingSettings
    Rem Remove the default timing list.
    myTimingSettings.TimingLists.Item(1).Delete
    Rem Add a new timing list that triggers when the page is clicked.
    Set myTimingList = myTimingSettings.TimingLists.Add(idDynamicTriggerEvents.idOnPageClick)
    Rem Add the polygons to a single timing group.
    Set myTimingGroup = myTimingList.TimingGroups.Add(myPolygonA, 0)
    myTimingGroup.TimingTargets.Add myPolygonB, 2
    myTimingGroup.TimingTargets.Add myPolygonC, 2
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

