Rem LayerControl.vbs
Rem An InDesign CS6 VisualScript
Rem
Rem Shows how to create page items on a given layer
Rem and how to move existing page items to a layer.
Function main()
	Set myInDesign = CreateObject("InDesign.Application.CS5")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	With myDocument.Layers.Add
		.name = "Background"
	End With
	With myDocument.Layers.Add
		.name = "Language A"
	End With
	With myDocument.Layers.Add
		.name = "Language B"
	End With
	With myDocument.Layers.Add
		.name = "Language C"
	End With
	Set myPage = myDocument.Pages.Item(1)
	myBounds = myGetBounds(myDocument, myPage)
	With myPage.Rectangles.Add
		.geometricBounds = myBounds
		.FillColor = myDocument.Colors.Item("Black")
		.FillTint = 20
		.itemLayer = myDocument.Layers.Item("Background")
	End With
	myX1 = (myBounds(1) + ((myBounds(3) - myBounds(1)) / 2)) - 144
	myY1 = ((myBounds(2) - myBounds(0)) / 2) - 144
	myX2 = (myBounds(1) + ((myBounds(3) - myBounds(1)) / 2)) + 144
	myY2 = ((myBounds(2) - myBounds(0)) / 2) + 144
	For myCounter = 1 To 3
		Set myTextFrame = myPage.TextFrames.Add
		myTextFrame.geometricBounds = Array(myY1, myX1, myY2, myX2)
		Select Case myCounter
			Case 1:
			myTextFrame.itemLayer = myDocument.Layers.Item("Language A")
			myTextFrame.Contents = "Language A"
		Case 2:
			myTextFrame.itemLayer = myDocument.Layers.Item("Language B")
			myTextFrame.Contents = "Language B"
		Case 3:
			myTextFrame.itemLayer = myDocument.Layers.Item("Language C")
			myTextFrame.Contents = "Language C"
		End Select
	Next
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Rem<fragment>
	Rem Given a document "myDocument" containing layers named "Background,"
	Rem "Language A,", "Language B," and "Language C," export the "Background"
	Rem layer and each "Language" layer to PDF as separate PDF files...
	Set myFileSystemObject = New FileSystemObject
	Set myFolder = myFileSystemObject.GetSpecialFolder(TemporaryFolder)
	myPath = myFolder.ParentFolder.ParentFolder.Path & "\Desktop\"
	For myCounter = 1 To 3
		Select Case myCounter
			Case 1:
				myVersion = "Language A"
			Case 2:
				myVersion = "Language B"
			Case 3:
				myVersion = "Language C"
		End Select
		For myLanguageCounter = 1 To myDocument.Layers.Count
			If myDocument.Layers.Item(myLanguageCounter).name = myVersion Or myDocument.Layers.Item(myLanguageCounter).name = "Background" Then
				myDocument.Layers.Item(myLanguageCounter).Visible = True
				myDocument.Layers.Item(myLanguageCounter).Printable = True
			Else
				myDocument.Layers.Item(myLanguageCounter).Visible = False
				myDocument.Layers.Item(myLanguageCounter).Printable = False
			End If
		Next
		myFilePath = myPath & myVersion & ".pdf"
		myDocument.Export idExportFormat.idPDFType, myFilePath
	Next
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
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
	myY1 = myPage.MarginPreferences.Top
	myX2 = myPageWidth - myX2
	myY2 = myPageHeight - myPage.MarginPreferences.Bottom
	myGetBounds = Array(myY1, myX1, myY2, myX2)
End Function