Rem LabelGraphicEventHandler.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Provides an event handler for the LayoutMenuLabelGraphic.vbs
Rem tutorial script. Adds a label to the selected graphic(s).
Rem<fragment>
myLabelGraphicEventHandler evt
Function myLabelGraphicEventHandler(myEvent)
	ReDim myObjectList(0)
	Set myInDesign = CreateObject("InDesign.Application")
	If myInDesign.Selection.Count > 0 Then
		Rem Does the selection contain any graphics?
		for myCounter = 1 To myInDesign.Selection.Count
			Select Case TypeName(myInDesign.Selection.Item(myCounter))
				Case "PDF","EPS", "Image":
					If Not (IsEmpty(myObjectList(0))) Then
                    	ReDim Preserve myObjectList(UBound(myObjectList) + 1)
                    End If
                    Set myObjectList(UBound(myObjectList)) = myInDesign.Selection.Item(myCounter)
				Case "Rectangle", "Oval", "Polygon":
					If myInDesign.selection.Item(myCounter).Graphics.Count > 0 Then
						If Not (IsEmpty(myObjectList(0))) Then
                        	ReDim Preserve myObjectList(UBound(myObjectList) + 1)
	                    End If
	                    Set myObjectList(UBound(myObjectList)) = myInDesign.Selection.Item(myCounter).Graphics.Item(1)
					End If	
			End Select
		Next
		If Not (IsEmpty(myObjectList(0))) Then
			myDisplayDialog myInDesign, myObjectList
		End If
	End If
End Function
Rem Function that adds the label.
Function myAddLabel(myInDesign, myGraphic, myLabelType, myLabelHeight, myLabelOffset, myLabelStyleName, myLayerName)
	Set myDocument = myInDesign.documents.Item(1)
	myLabelStyle = myDocument.paragraphStyles.item(myLabelStyleName)
	Set myLink = myGraphic.ItemLink
	Rem Create the label layer if it does not already exist.
	On Error Resume Next
	Set myLabelLayer = myDocument.layers.item(myLayerName)
	If Err.Number <> 0 Then
		Set myLabelLayer = myDocument.Layers.Add
		myLabelLayer.Name = myLayerName
		Err.Clear
	End If
	On Error Goto 0
	Rem Label type defines the text that goes in the label.
	Select Case myLabelType
		Rem File name
		case 0:
			myLabel = myLink.Name
		Rem File path
		case 1:
			myLabel = myLink.FilePath
		Rem XMP description
		case 2:
			On Error Resume Next
				myLabel = myLink.LinkXmp.Description
			If Err.Number <> 0 Then
				myLabel = "No description available."
				Err.Clear
			End If
			On Error Goto 0
		Rem XMP author
		case 3:
			On Error Resume Next
			myLabel = myLink.LinkXmp.Author
			If Err.Number <> 0 Then
				myLabel = "No author available."
				Err.Clear
			End If
			On Error Goto 0
	End Select
	Set myFrame = myGraphic.Parent
	myBounds = myFrame.GeometricBounds
	myX1 = myBounds(1) 
	myY1 = myBounds(2) + myLabelOffset 
	myX2 = myBounds(3) 
	myY2 = myY1 + myLabelHeight
	Set myTextFrame = myFrame.Parent.TextFrames.Add(myLabelLayer)
	myTextFrame.GeometricBounds = Array(myY1, myX1, myY2, myX2)
	myTextFrame.Contents = myLabel
	myTextFrame.TextFramePreferences.FirstBaselineOffset = idFirstBaseline.idLeadingOffset 
	myTextFrame.Paragraphs.Item(1).AppliedParagraphStyle = myInDesign.Documents.Item(1).ParagraphStyles.Item(myLabelStyle)
End Function
Function myDisplayDialog(myInDesign, myObjectList)
	myLabelWidth = 100
	myStyleNames = myGetParagraphStyleNames(myInDesign.Documents.Item(1))
	myLayerNames = myGetLayerNames(myInDesign.Documents.Item(1))
	Set myDialog = myInDesign.Dialogs.Add
	myDialog.Name = "LabelGraphics"
	With myDialog.DialogColumns.Add
		Rem Label type
		With .DialogRows.Add
			With .DialogColumns.Add
				With .StaticTexts.add
					.StaticLabel = "Label Type"
					.MinWidth = myLabelWidth
				End With
			End With
			With .DialogColumns.Add
				Set myLabelTypeDropdown = .Dropdowns.Add
				myLabelTypeDropdown.StringList = Array("File name", "File path", "XMP description", "XMP author")
				myLabelTypeDropdown.SelectedIndex = 0
			End With
		End With
		Rem Text frame height
		With .DialogRows.Add
			With .DialogColumns.Add
				With .StaticTexts.add
					.StaticLabel="Label Height"
					.MinWidth=myLabelWidth
				End With
			End With
			With .DialogColumns.Add
				Set myLabelHeightField = .MeasurementEditboxes.Add
				myLabelHeightField.EditValue = 24
				myLabelHeightField.EditUnits = idMeasurementUnits.idPoints
			End With
		End With
		Rem Text frame offset
		With .DialogRows.Add
			With .DialogColumns.Add
				With .staticTexts.add
					.staticLabel="Label Offset"
					.minWidth=myLabelWidth
				End With
			End With
			With .DialogColumns.Add
				Set myLabelOffsetField = .MeasurementEditboxes.Add
				myLabelOffsetField.editValue=0
				myLabelOffsetField.editUnits=idMeasurementUnits.idPoints
			End With
		End With
		Rem Style to apply
		With .DialogRows.Add
			With .DialogColumns.Add
				With .StaticTexts.Add
					.StaticLabel="Label Style"
					.MinWidth=myLabelWidth
				End With
			End With
			With .DialogColumns.Add
				Set myLabelStyleDropdown = .Dropdowns.Add
				myLabelStyleDropdown.StringList=myStyleNames
				myLabelStyleDropdown.SelectedIndex=0
			End With
		End With
		Rem Layer
		With .DialogRows.Add
			With .DialogColumns.Add
				With .StaticTexts.Add
					.StaticLabel="Layer"
					.MinWidth=myLabelWidth
				End With
			End With
			With .DialogColumns.Add
				Set myLayerDropdown = .Dropdowns.Add
				myLayerDropdown.StringList=myLayerNames
				myLayerDropdown.SelectedIndex=0
			End With
		End With
	End With
	myResult = myDialog.show
	If myResult = True Then
		myLabelType = myLabelTypeDropdown.selectedIndex
		myLabelHeight = myLabelHeightField.editValue
		myLabelOffset = myLabelOffsetField.editValue
		myLabelStyle = myStyleNames(myLabelStyleDropdown.selectedIndex)
		myLayerName = myLayerNames(myLayerDropdown.selectedIndex)
		myDialog.Destroy
		myOldXUnits = myInDesign.documents.item(1).viewPreferences.horizontalMeasurementUnits
		myOldYUnits = myInDesign.documents.item(1).viewPreferences.verticalMeasurementUnits
		myInDesign.documents.item(1).viewPreferences.horizontalMeasurementUnits = idMeasurementUnits.idPoints
		myInDesign.documents.item(1).viewPreferences.verticalMeasurementUnits = idMeasurementUnits.idPoints
		for myCounter = 0 To UBound(myObjectList)
			Set myGraphic = myObjectList(myCounter)
			myAddLabel myInDesign, myGraphic, myLabelType, myLabelHeight, myLabelOffset, myLabelStyle, myLayerName
		Next
		myInDesign.documents.item(1).viewPreferences.horizontalMeasurementUnits = myOldXUnits
		myInDesign.documents.item(1).viewPreferences.verticalMeasurementUnits = myOldYUnits
	Else
		myDialog.Destroy
	End If
End Function
Rem Return an array of paragraph style names.
Function myGetParagraphStyleNames(myDocument)
	ReDim myStyleNames(0)
	For myCounter = 1 To myDocument.ParagraphStyles.Count
		If Not (IsEmpty(myStyleNames(0))) Then
	    	ReDim Preserve myStyleNames(UBound(myStyleNames) + 1)
	    End If
		myStyleNames(UBound(myStyleNames)) = myDocument.ParagraphStyles.Item(myCounter).Name
	Next
	myGetParagraphStyleNames = myStyleNames
End Function
Rem Return an array of layer names.
Function myGetLayerNames(myDocument)
	myAddLayerName = true
	ReDim myLayerNames(0)
	For myCounter = 1 To myDocument.Layers.Count
		If Not (IsEmpty(myLayerNames(0))) Then
	    	ReDim Preserve myLayerNames(UBound(myLayerNames) + 1)
	    End If
		myLayerNames(UBound(myLayerNames)) = myDocument.Layers.Item(myCounter).Name
		If myDocument.Layers.Item(myCounter).Name = "Labels" Then
			myAddLayerName = False
		End if
	Next
	If myAddLayerName = True Then
		ReDim Preserve myLayerNames(UBound(myLayerNames) + 1)
		myLayerNames(UBound(myLayerNames)) = "Labels"
	End If
	myGetLayerNames = myLayerNames
End Function
Rem</fragment>