Rem ExcelImportPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets the Excel import filter preferences.
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
	With myInDesign.ExcelImportPreferences
		Rem alignmentStyle property can be:
		Rem AlignmentStyleOptions.centerAlign
		Rem AlignmentStyleOptions.leftAlign
		Rem AlignmentStyleOptions.rightAlign
		Rem AlignmentStyleOptions.spreadsheet
		.AlignmentStyle = idAlignmentStyleOptions.idSpreadsheet
		.DecimalPlaces = 4
		.PreserveGraphics = False
		Rem Enter the range you want to import as "start cell:end cell".
		.RangeName = "A1:B16"
		.SheetIndex = 1
		.SheetName = "pathpoints"
		.ShowHiddenCells = False
		Rem tableFormatting property can be:
		Rem idTableFormattingOptions.idExcelFormattedTable
		Rem idTableFormattingOptions.idExcelUnformattedTabbedText
		Rem idTableFormattingOptions.idExcelUnformattedTable
		.TableFormatting = idTableFormattingOptions.idExcelFormattedTable
		.UseTypographersQuotes = True
		.ViewName = ""
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function