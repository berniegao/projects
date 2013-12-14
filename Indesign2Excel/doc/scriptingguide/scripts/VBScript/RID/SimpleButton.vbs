Rem SimpleButton.vbs
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
    Rem Given a page "myPage" and a document containing the color "Red"...
    Rem Make a button by converting a page item.
    Set myRightArrow = myPage.Polygons.Add
    myRightArrow.fillColor = myDocument.Colors.Item("Red")
    myRightArrow.name = "GoToNextPageButton"
    myRightArrow.Paths.Item(1).EntirePath = Array(Array(72, 72), Array(144, 108), Array(72, 144))
    Set myButton = myPage.Buttons.Add
    myButton.geometricBounds = Array(72, 72, 144, 144)
    myButton.States.Item(1).AddItemsToState myRightArrow
    Set myGoToNextPageBehavior = myButton.GotoNextPageBehaviors.Add
    myGoToNextPageBehavior.behaviorEvent = idBehaviorEvents.idMouseUp
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

