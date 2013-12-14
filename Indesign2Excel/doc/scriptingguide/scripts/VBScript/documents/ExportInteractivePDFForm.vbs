REM ExportInteractivePDFForm.vbs
REM An InDesign CS6 VBScript
REM
REM Export an interactive PDF file with input text field and submit button
main
Function main()
    Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
REM <setup>
Function mySetup(myInDesign)
    Set myDocument = myInDesign.Documents.Add
    With myDocument.DocumentPreferences
        .PagesPerDocument = 1
        .FacingPages = False
        .PageHeight = "800pt"
        .PageWidth = "600pt"
    End With
    REM Create color model
    myAddColor myDocument, "Red", idColorSpace.idRGB, idColorModel.idProcess, Array(255, 0, 0)
    myAddColor myDocument, "Blue", idColorSpace.idRGB, idColorModel.idProcess, Array(0, 0, 255)
    myAddColor myDocument, "Green", idColorSpace.idRGB, idColorModel.idProcess, Array(0, 255, 0)
End Function
REM </setup>
REM <snippet>
Function mySnippet(myInDesign)
    Set myDocument = myInDesign.Documents.Item(1)
    REM <fragment>
    Set myPage = myDocument.Pages.Item(1)
    REM Create a textframe as firstname label
    Set myTextFrame = myPage.TextFrames.Add
    myTextFrame.GeometricBounds = Array(15, 15, 20, 35)
    myTextFrame.Contents = "FirstName: "
    REM Create a textbox as firstname input box
    Set myTextBox = myPage.TextBoxes.Add
    myTextBox.GeometricBounds = Array(15, 40, 20, 75)
    REM Create another textframe as lastname label
    Set myTextFrame1 = myPage.TextFrames.Add
    myTextFrame1.GeometricBounds = Array(30, 15, 25, 35)
    myTextFrame1.Contents = "LastName: "    
    REM Create another textbox as lastname input box
    Set myTextBox = myPage.TextBoxes.Add
    myTextBox.GeometricBounds = Array(30, 40, 25, 75) 
    REM Create a TextFrame to introduce the following checkbox
    Set myTextFrame2 = myPage.TextFrames.Add
    myTextFrame2.GeometricBounds = Array(15, 80, 20, 95)
    myTextFrame2.Contents = "Hobby: "
    REM Create some CheckBoxes
    Set myCheckBox = myPage.CheckBoxes.Add
    myCheckBox.GeometricBounds = Array(15, 100, 20, 105)
    myCheckBox.Name = "Football "
    Set myTextFrame3 = myPage.TextFrames.Add
    myTextFrame3.GeometricBounds = Array(15, 107, 20, 125)
    myTextFrame3.Contents = "Football "
    Set myCheckBox1 = myPage.CheckBoxes.Add
    myCheckBox1.GeometricBounds = Array(15, 130, 20, 135)
    myCheckBox1.Name = "Basketball "
    Set myTextFrame4 = myPage.TextFrames.Add
    myTextFrame4.GeometricBounds = Array(15, 137, 20, 160)
    myTextFrame4.Contents = "Basketball "
    Set myCheckBox2 = myPage.CheckBoxes.Add
    myCheckBox2.GeometricBounds = Array(15, 165, 20, 170)
    myCheckBox2.Name = "Pingpong "
    Set myTextFrame5 = myPage.TextFrames.Add
    myTextFrame5.GeometricBounds = Array(15, 172, 20, 193)
    myTextFrame5.Contents = "Pingpong "    
    REM Create a button for submit
    Set submitButton = myPage.Buttons.Add
    submitButton.GeometricBounds = Array(45, 15, 35, 35)
    submitButton.Name = "Submit"
    REM Fill contents to the button
    Set myRightArrow1 = submitButton.States.Item(1).Polygons.Add
    myRightArrow1.fillColor = myDocument.Colors.Item("Green")
    myRightArrow1.Paths.Item(1).EntirePath = Array(Array(15, 35),Array(35,40),Array(15, 45))
    REM Add the Rollover state.
	Set myRolloverState1 = submitButton.States.Add
	REM Add a shadow to the polygon in the Rollover state.
	Set myRolloverArrow1 = myRolloverState1.Polygons.Add
    myRolloverArrow1.fillColor = myDocument.Colors.Item("Green")
	myRolloverArrow1.Paths.Item(1).EntirePath = Array(Array(15, 35),Array(35,40),Array(15, 45))
	Set myFillTransparencySettings1 = myRolloverArrow1.FillTransparencySettings
	myFillTransparencySettings1.DropShadowSettings.Mode = idShadowMode.idDrop
	myFillTransparencySettings1.DropShadowSettings.Angle = 90
	myFillTransparencySettings1.DropShadowSettings.XOffset = 0
	myFillTransparencySettings1.DropShadowSettings.YOffset = 0
	myFillTransparencySettings1.DropShadowSettings.Size = 6
	REM Add a shadow to the polygon in the Click state.
	Set myClickState1 = submitButton.States.Add
	Set myClickArrow1 = myClickState1.Polygons.Add
    myClickArrow1.FillColor = myDocument.Colors.Item("Blue")
    myClickArrow1.Paths.Item(1).EntirePath = Array(Array(15, 35),Array(35,40),Array(15,45))
    REM Set the behavior for the button.
    Set SubmitForm = submitButton.SubmitFormBehaviors.Add
    SubmitForm.BehaviorEvent = idBehaviorEvents.idMouseUp    
    REM Create a button for print
    Set printButton = myPage.Buttons.Add
    printButton.GeometricBounds = Array(45, 40, 35, 60)
    REM Fill contents to the button
    Set myRightArrow2 = printButton.States.Item(1).Polygons.Add
    myRightArrow2.fillColor = myDocument.Colors.Item("Red")
    myRightArrow2.Paths.Item(1).EntirePath = Array(Array(40, 35),Array(60,40),Array(40, 45))
    REM Add the Rollover state.
    Set myRolloverState2 = printButton.States.Add
    REM Add a shadow to the polygon in the Rollover state.
    Set myRolloverArrow2 = myRolloverState2.Polygons.Add
    myRolloverArrow2.FillColor = myDocument.Colors.Item("Red")
    myRolloverArrow2.Paths.Item(1).EntirePath = Array(Array(40, 35),Array(60,40),Array(40, 45))
	Set myFillTransparencySettings2 = myRolloverArrow2.FillTransparencySettings
	myFillTransparencySettings2.DropShadowSettings.Mode = idShadowMode.idDrop
	myFillTransparencySettings2.DropShadowSettings.Angle = 90
	myFillTransparencySettings2.DropShadowSettings.XOffset = 0
	myFillTransparencySettings2.DropShadowSettings.YOffset = 0
	myFillTransparencySettings2.DropShadowSettings.Size = 6
	REM Add a shadow to the polygon in the Click state.
	Set myClickState2 = printButton.States.Add
	Set myClickArrow2 = myClickState2.Polygons.Add
    myClickArrow2.FillColor = myDocument.Colors.Item("Blue")
    myClickArrow2.Paths.Item(1).EntirePath = Array(Array(40, 35),Array(60,40),Array(40,45))
    REM Set the behavior for the button.
    Set PrintForm = printButton.PrintFormBehaviors.Add
    PrintForm.BehaviorEvent = idBehaviorEvents.idMouseUp    
    REM Export the document to PDF.
    myDocument.Export idExportFormat.idInteractivePDF, "C:\SubmitForm.pdf", False
    REM </fragment>
End Function
REM </snippet>
REM <teardown>
Function myTeardown(myInDesign)
End Function
REM </teardown>
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