Rem AnimateRotation.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to rotate a page item as it is animated.
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
    Set myDocument = app.Documents.Item(1)
    Set myPage = myDocument.Pages.Item(1)
    Set myColorA = myAddColor(myDocument, "DGC1_446a", idColorSpace.idCMYK, idColorModel.idProcess, Array(0, 100, 0, 50))
    Rem <fragment>
    Rem Given a document "myDocument" and a page "myPage" and the color "myColorA"...
    Rem Add a page items to animate.
    Set myPolygonA = myPage.Polygons.Add
    myPolygonA.FillColor = myColorA
    myPolygonA.StrokeColor = myDocument.Swatches.Item("None")
    myPolygonA.Paths.Item(1).EntirePath = Array(Array(72, 72), Array(72, 144), Array(144, 108))
    Rem Create a motion path.
    myMotionPathPoints = Array(Array(Array(Array(108, 108), Array(108, 108), Array(108, 108)), Array(Array(516, 108), Array(516, 108), Array(516, 108))), True)
    Rem Set animation preferences for the polygon.
    myPolygonA.AnimationSettings.Duration = 2
    myPolygonA.AnimationSettings.MotionPathPoints = myMotionPathPoints
    Rem Assuming 24 Frames Per Second (FPS)
    Rem 23 = 1 second, 47 = 2 seconds, 71 = 3 seconds, 95 = 4 seconds, 119 = 5 seconds, 143 = 6 seconds
    Rem Since the duration of our animation is 2 seconds, the following line will
    Rem make the polygon rotate 360 degrees from the start to the end
    Rem of the animation.
    myPolygonA.AnimationSettings.RotationArray = Array(Array(0, 0), Array(47, 360))
    Set myTimingSettings = myPage.Parent.TimingSettings
    Rem Remove the default timing list.
    myTimingSettings.TimingLists.Item(1).Delete
    Rem Add a new timing list that triggers when the page is clicked.
    Set myTimingList = myTimingSettings.TimingLists.Add(idDynamicTriggerEvents.idOnPageClick)
    Rem Add the polygons to a single timing group.
    Set myTimingGroup = myTimingList.TimingGroups.Add(myPolygonA, 0)
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
