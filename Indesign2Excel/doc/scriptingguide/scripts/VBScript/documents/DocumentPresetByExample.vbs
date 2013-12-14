Rem DocumentPresetByExample.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a document preset based on the current document settings.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Rem If the document preset "myDocumentPreset" does 
	Rem not already exist, create it.
	Rem Disable normal error handling.
	Err.Clear
	On Error Resume Next
	Set myDocumentPreset = myInDesign.DocumentPresets.Item("myDocumentPreset")
	Rem If the document preset did not exist, the above line
	Rem generates an error. Handle the error.
	If (Err.Number <> 0) Then
		Set myDocumentPreset = myInDesign.DocumentPresets.Add
		myDocumentPreset.Name = "myDocumentPreset"
		Err.Clear
	End If
	Rem Restore normal error handling.
	On Error GoTo 0
	Rem Fill in the properties of the document preset with the corresponding
	Rem properties of the active document.
	With myDocumentPreset
		Rem Note that the following gets the page margins from the margin
		Rem preferences of the document to get the margin preferences from the
		Rem active page, replace "myDocument" with
		Rem "myInDesign.activeWindow.activePage" in the following six lines
		Rem (assuming the active window is a layout window).
		.Left = myDocument.MarginPreferences.Left
		.Right = myDocument.MarginPreferences.Right
		.Top = myDocument.MarginPreferences.Top
		.Bottom = myDocument.MarginPreferences.Bottom
		.ColumnCount = myDocument.MarginPreferences.ColumnCount
		.ColumnGutter = myDocument.MarginPreferences.ColumnGutter
		.DocumentBleedBottomOffset _
		= myDocument.DocumentPreferences.DocumentBleedBottomOffset
		.DocumentBleedTopOffset _
		= myDocument.DocumentPreferences.DocumentBleedTopOffset
		.DocumentBleedInsideOrLeftOffset _
		= myDocument.DocumentPreferences.DocumentBleedInsideOrLeftOffset
		.DocumentBleedOutsideOrRightOffset _
		= myDocument.DocumentPreferences.DocumentBleedOutsideOrRightOffset
		.FacingPages = myDocument.DocumentPreferences.FacingPages
		.PageHeight = myDocument.DocumentPreferences.PageHeight
		.PageWidth = myDocument.DocumentPreferences.PageWidth
		.PageOrientation = myDocument.DocumentPreferences.PageOrientation
		.PagesPerDocument = myDocument.DocumentPreferences.PagesPerDocument
		.SlugBottomOffset = myDocument.DocumentPreferences.SlugBottomOffset
		.SlugTopOffset = myDocument.DocumentPreferences.SlugTopOffset
		.SlugInsideOrLeftOffset _
		= myDocument.DocumentPreferences.SlugInsideOrLeftOffset
		.SlugRightOrOutsideOffset _
		= myDocument.DocumentPreferences.SlugRightOrOutsideOffset
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function