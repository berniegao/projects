Rem PageMarginsForSmallPages.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to avoid errors when setting margins for a small page size.
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
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	With myPage.MarginPreferences
		.Top = 0
		.Bottom = 0
		.Left = 0
		.Right = 0
		.ColumnCount = 1
		.ColumnGutter = 0
	End With
	Rem The following prevents errors when new pages are added.
	With myDocument.MarginPreferences
		.Top = 0
		.Bottom = 0
		.Left = 0
		.Right = 0
		.ColumnCount = 1
		.ColumnGutter = 0
	End With
	Rem The following assumes that your default master spread contains two pages.
	With myDocument.MasterSpreads.Item(1).Pages
		With .Item(1).MarginPreferences
			.Top = 0
			.Bottom = 0
			.Left = 0
			.Right = 0
			.ColumnCount = 1
			.ColumnGutter = 0
		End With
		With .Item(2).MarginPreferences
			.Top = 0
			.Bottom = 0
			.Left = 0
			.Right = 0
			.ColumnCount = 1
			.ColumnGutter = 0
		End With
	End With
	Rem At this point, you can set your page size to a small width and height
	Rem (1x1 picas minimum).
	myDocument.DocumentPreferences.PageHeight = "1p"
	myDocument.DocumentPreferences.PageWidth = "6p"
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function