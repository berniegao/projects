Rem PageMargins.vbs
Rem An InDesign CS6 VBSript
Rem
Rem Shows how to set the margins of a document.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Set myViewPreferences = myDocument.ViewPreferences
    myViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
    myViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	With myDocument.DocumentPreferences
		.PageWidth = "40p"
		.PageHeight = "60p"
		.FacingPages = True
	End With
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	With myDocument.marginPreferences
		.Top = 56
		.Bottom = 24
		.Left = 48
		.Right = 10
	End With
	With myPage.marginPreferences
		.Top = 56
		.Bottom = 24
		Rem When document.DocumentPreferences.FacingPages = true,
		Rem "Left" means inside and "Right" means outside.
		.Left = 48
		.Right = 10
	End With
	With myDocument.MasterSpreads.Item(1).Pages
		With .Item(1).MarginPreferences
			.Top = 56
			.Bottom = 24
			.Left = 48
			.Right = 10
		End With
		With .Item(2).MarginPreferences
			.Top = 56
			.Bottom = 24
			.Left = 48
			.Right = 10
		End With
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function