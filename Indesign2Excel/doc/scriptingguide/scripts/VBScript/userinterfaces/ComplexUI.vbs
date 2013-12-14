Rem ComplexUI.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to create a more complex dialog box.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDialog = myInDesign.Dialogs.Add
	myDialog.CanCancel = True
	myDialog.Name = "User Interface Example Script"
	Rem Create a dialog column.
	Set myDialogColumn = myDialog.DialogColumns.Add
	Rem Create a border panel.
	Set myBorderPanel = myDialogColumn.BorderPanels.Add
	Rem Create a dialog column inside the border panel.
	Set myTempDialogColumn = myBorderPanel.DialogColumns.Add
	Set myStaticText = myTempDialogColumn.StaticTexts.Add
	myStaticText.StaticLabel = "Message:"
	Rem Create another dialog column inside the border panel.
	Set myTempDialogColumn = myBorderPanel.DialogColumns.Add
	Set myTextEditField = myTempDialogColumn.TextEditboxes.Add
	myTextEditField.EditContents = "Hello World!"
	myTextEditField.MinWidth = 180
	Rem Create another border panel.
	Set myBorderPanel = myDialogColumn.BorderPanels.Add
	Rem Create a dialog column inside the border panel.
	Set myTempDialogColumn = myBorderPanel.DialogColumns.Add
	Set myStaticText = myTempDialogColumn.StaticTexts.Add
	myStaticText.StaticLabel = "Point Size:"
	Rem Create another dialog column inside the border panel.
	Set myTempDialogColumn = myBorderPanel.DialogColumns.Add
	Set myPointSizeField = myTempDialogColumn.RealEditboxes.Add
	myPointSizeField.EditValue = 72
	Rem Create another border panel.
	Set myBorderPanel = myDialogColumn.BorderPanels.Add
	Rem Create a dialog column inside the border panel.
	Set myTempDialogColumn = myBorderPanel.DialogColumns.Add
	Set myStaticText = myTempDialogColumn.StaticTexts.Add
	myStaticText.StaticLabel = "Vertical Justification:"
	Rem Create another dialog column inside the border panel.
	Set myTempDialogColumn = myBorderPanel.DialogColumns.Add
	Set myVerticalJustificationMenu = myTempDialogColumn.Dropdowns.Add
	myVerticalJustificationMenu.StringList = Array("Top", "Center", "Bottom")
	myVerticalJustificationMenu.SelectedIndex = 0
	Rem Create another border panel.
	Set myBorderPanel = myDialogColumn.BorderPanels.Add
	Rem Create a dialog column inside the border panel.
	Set myTempDialogColumn = myBorderPanel.DialogColumns.Add
	Set myStaticText = myTempDialogColumn.StaticTexts.Add
	myStaticText.StaticLabel = "Paragraph Alignment:"
	Rem Create another dialog column inside the border panel.
	Set myTempDialogColumn = myBorderPanel.DialogColumns.Add
	Set myRadioButtonGroup = myTempDialogColumn.RadiobuttonGroups.Add
	Set myLeftRadioButton = myRadioButtonGroup.RadiobuttonControls.Add
	myLeftRadioButton.StaticLabel = "Left"
	myLeftRadioButton.CheckedState = True
	Set myCenterRadioButton = myRadioButtonGroup.RadiobuttonControls.Add
	myCenterRadioButton.StaticLabel = "Center"
	Set myRightRadioButton = myRadioButtonGroup.RadiobuttonControls.Add
	myRightRadioButton.StaticLabel = "Right"
	Rem If the user clicked OK, then create the example document.
	If myDialog.Show = True Then
		Rem Get the values from the dialog box controls.
		myString = myTextEditField.EditContents
		myPointSize = myPointSizeField.EditValue
		Select Case myVerticalJustificationMenu.SelectedIndex
			Case 0
				myVerticalJustification = idVerticalJustification.idTopAlign
			Case 1
				myVerticalJustification = idVerticalJustification.idCenterAlign
			Case Else
				myVerticalJustification = idTopAlign.idBottomAlign
			End Select
		Rem set the paragraph alignment of the text to the dialog radio button choice.
		Select Case myRadioButtonGroup.SelectedButton
			Case 0
				myAlignment = idJustification.idLeftAlign
			Case 1
				myAlignment = idJustification.idCenterAlign
			Case Else
				myAlignment = idJustification.idRightAlign
		End Select
		Rem Remove the dialog box from memory.
		myDialog.Destroy
	Else
		myDialog.Destroy	
	End If
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myMakeDocument(myInDesign, myString, myPointSize, myAlignment, myVerticalJustification)
	Rem Create a new document.
	Set myDocument = myInDesign.Documents.Add
	Set myTextFrame = myDocument.Pages.Item(1).TextFrames.Add
	Rem Resize the text frame to the "live" area of the 
	Rem page (using the function "myGetBounds").
	myBounds = myGetBounds(myDocument, myDocument.Pages.Item(1))
	myTextFrame.GeometricBounds = myBounds
	Rem Enter the text from the dialog box in the text frame.
	myTextFrame.Contents = myString
	Rem Set the size of the text to the size you entered 
	Rem in the dialog box.
	myTextFrame.Texts.Item(1).PointSize = myPointSize
	Rem Set the paragraph alignment to the alignment you 
	Rem selected in the dialog box.
	myTextFrame.Texts.Item(1).Justification = myAlignment
	Rem Set the text frame vertical justification to the vertical justification 
	Rem you selected in the dialog box.
	myTextFrame.TextFramePreferences.VerticalJustification = myVerticalJustification
End Function
Function myGetBounds(myDocument, myPage)
	myPageWidth = myDocument.DocumentPreferences.PageWidth
	myPageHeight = myDocument.DocumentPreferences.PageHeight
	If myPage.Side = idPageSideOptions.idLeftHand Then
		myX2 = myPage.MarginPreferences.Left
		myX1 = myPage.MarginPreferences.Right
	Else
		myX1 = myPage.MarginPreferences.Left
		myX2 = myPage.MarginPreferences.Right
	End If
	myY1 = myPage.marginPreferences.Top
	myX2 = myPageWidth - myX2
	myY2 = myPageHeight - myPage.MarginPreferences.Bottom
	myGetBounds = Array(myY1, myX1, myY2, myX2)
End Function