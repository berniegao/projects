Rem SpreadAndPageGuides.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Demonstrates the difference between spread guides and page guides.
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
	Rem<fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	myDocument.DocumentPreferences.FacingPages = True
	myDocument.DocumentPreferences.PagesPerDocument = 3
	With myDocument.Spreads.Item(2)
		Rem Note the difference between these two guides on pages 2 and 3.
		With .Guides.Add
			.Orientation = idHorizontalOrVertical.idHorizontal
			.Location = "6p"
			.FitToPage = True
		End With
		With .Guides.Add
			.Orientation = idHorizontalOrVertical.idHorizontal
			.Location = "9p"
			.FitToPage = False
		End With
	End With
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function

