Rem MarginsAndColumns.vbs
Rem An InDesign CS6 VBScript
Rem Sets the margins and columns for the first page of a document.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	With myDocument.Pages.Item(1).MarginPreferences
		.ColumnCount = 3
		Rem columnGutter can be a number or a measurement string.
		.ColumnGutter = "1p"
		.Top = "4p"
		.Bottom = "6p"
		Rem When document.documentPreferences.facingPages = true,
		Rem "left" means inside "right" means outside.
		.Left = "6p"
		.Right = "4p"
	End With
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function

