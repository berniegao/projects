Rem TransformAnimation.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to apply multiple transformations to an animated object.
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
    Set myOvalA = myPage.Ovals.Add
    myOvalA.fillColor = myColorA
    myOvalA.strokeColor = myDocument.Swatches.Item("None")
    myOvalA.geometricBounds = Array(66, 66, 78, 78)
    Set myOvalB = myPage.Ovals.Add
    myOvalB.fillColor = myColorB
    myOvalB.strokeColor = myDocument.Swatches.Item("None")
    myOvalB.geometricBounds = Array(66, 66, 78, 78)
    Set myOvalC = myPage.Ovals.Add
    myOvalC.fillColor = myColorC
    myOvalC.strokeColor = myDocument.Swatches.Item("None")
    myOvalC.geometricBounds = Array(66, 66, 78, 78)
    Rem <fragment>
    Rem Given a page containing ovals "myOvalA," "myOvalB," and "myOvalC"...
    Rem The motion path is constructed relative to the center of the object, and key frames
    Rem are based on the duration of the animation divided by the number of frames per second
    Rem (usually 24). The following array sets key frames at the start, midpoint, and end
    Rem of a path.
    myMotionPath = Array(Array(0, Array(Array(0, 0), Array(0, 0), Array(0, 0))), Array(23, Array(Array(234, 0), Array(234, 0), Array(234, 0))), Array(47, Array(Array(468, 0), Array(468, 0), Array(468, 0))))
    myOvalA.AnimationSettings.Duration = 2
    myOvalA.AnimationSettings.MotionPath = myMotionPath
    Rem The transformation changes at each key frame.
    Rem scaleXArray in the form Array(Array(keyframe, scale_percentage), Array(keyframe, scalePercentage), ...)
    myOvalA.AnimationSettings.ScaleXArray = Array(Array(0, 100), Array(23, 200), Array(47, 100))
    Rem scaleYArray in the form Array(Array(keyframe, scale_percentage), Array(keyframe, scalePercentage), ...)
    myOvalA.AnimationSettings.ScaleYArray = Array(Array(0, 100), Array(23, 200), Array(47, 100))
    Rem opacityArray in the form Array(Array(keyframe, opacity), Array(keyframe, opacity),...)
    myOvalA.AnimationSettings.OpacityArray = Array(Array(0, 100), Array(23, 20), Array(47, 100))
    myOvalA.AnimationSettings.PlaysLoop = True
    myOvalB.AnimationSettings.Duration = 2
    myOvalB.AnimationSettings.MotionPath = myMotionPath
    myOvalB.AnimationSettings.ScaleXArray = Array(Array(0, 200), Array(23, 300), Array(47, 50))
    myOvalB.AnimationSettings.ScaleYArray = Array(Array(0, 200), Array(23, 300), Array(47, 50))
    myOvalB.AnimationSettings.OpacityArray = Array(Array(0, 10), Array(23, 80), Array(47, 60))
    myOvalB.AnimationSettings.PlaysLoop = True
    myOvalC.AnimationSettings.Duration = 2
    myOvalC.AnimationSettings.MotionPath = myMotionPath
    myOvalC.AnimationSettings.ScaleXArray = Array(Array(0, 50), Array(23, 200), Array(47, 400))
    myOvalC.AnimationSettings.ScaleYArray = Array(Array(0, 50), Array(23, 200), Array(47, 400))
    myOvalC.AnimationSettings.OpacityArray = Array(Array(0, 100), Array(23, 40), Array(47, 80))
    myOvalC.AnimationSettings.PlaysLoop = True
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

