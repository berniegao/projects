Rem PageItemTimingSettings.jsx
Rem An InDesign CS6 JavaScript
Rem
Rem Shows how to work with the timing settings of a page item.
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
    Set myPolygonA = myPage.Polygons.Add
    myPolygonA.fillColor = myColorA
    myPolygonA.strokeColor = myDocument.Swatches.Item("None")
    myPolygonA.Paths.Item(1).EntirePath = Array(Array(72, 72), Array(72, 144), Array(144, 108))
    Rem Create a motion path.
    myMotionPathPointsA = Array(Array(Array(Array(108, 108), Array(108, 108), Array(108, 108)), Array(Array(516, 108), Array(516, 108), Array(516, 108))), True)
    Rem <fragment>
    Rem Given a document "myDocument" and a page "myPage" containg a polygon "myPolygonA"...
    Rem Remove the default timing list in the timing settings for the spread.
    Rem Set animation preferences for the polygon.
    myPolygonA.AnimationSettings.Duration = 2
    myPolygonA.AnimationSettings.MotionPathPoints = myMotionPathPointsA
    myPage.Parent.TimingSettings.TimingLists.Item(1).Delete
    Set myTimingSettings = myPolygonA.TimingSettings
    Set myTimingList = myTimingSettings.TimingLists.Add(idDynamicTriggerEvents.idOnClick)
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
        myColor.name = myColorName
    End If
    Err.Clear
    On Error GoTo 0
    myColor.Space = myColorSpace
    myColor.Model = myColorModel
    myColor.ColorValue = myColorValue
    Set myAddColor = myColor
End Function


