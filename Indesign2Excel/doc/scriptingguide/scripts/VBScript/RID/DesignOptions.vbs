Rem DesignOptions.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how use design options to control the animation of an object.
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
    Set myOvalA = myPage.Ovals.Add
    myOvalA.fillColor = myColorA
    myOvalA.strokeColor = myDocument.Swatches.Item("None")
    myOvalA.geometricBounds = Array(66, 66, 78, 78)
    Set myOvalB = myPage.Ovals.Add
    myOvalB.fillColor = myColorB
    myOvalB.strokeColor = myDocument.Swatches.Item("None")
    myOvalB.geometricBounds = Array(138, 66, 150, 78)
    Rem <fragment>
    Rem Given a page containing the ovals "myOvalA" and "myOvalB"...
    Set myMotionPreset = myInDesign.MotionPresets.Item("move-right-grow")
    myOvalA.AnimationSettings.Duration = 2
    myOvalA.AnimationSettings.PlaysLoop = True
    myOvalA.AnimationSettings.Preset = myMotionPreset
    myOvalA.AnimationSettings.DesignOption = idDesignOptions.idFromCurrentAppearance
    myOvalB.AnimationSettings.Duration = 2
    myOvalB.AnimationSettings.PlaysLoop = True
    myOvalB.AnimationSettings.Preset = myMotionPreset
    myOvalB.AnimationSettings.DesignOption = idDesignOptions.idToCurrentAppearance
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
