Rem BleedAndSlug.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to define the bleed and slug areas of a document.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
   Set myInDesign = CreateObject("InDesign.Application")
   Set myDocument = myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Rem <fragment>
	Rem The bleed and slug properties belong to the documentPreferences object.
	With myDocument.DocumentPreferences
	Rem Bleed
		.DocumentBleedBottomOffset = "3p"
		.DocumentBleedTopOffset = "3p"
		.DocumentBleedInsideOrLeftOffset = "3p"
		.DocumentBleedOutsideOrRightOffset = "3p"
		Rem Slug
		.SlugBottomOffset = "18p"
		.SlugTopOffset = "3p"
		.SlugInsideOrLeftOffset = "3p"
		.SlugRightOrOutsideOffset = "3p"
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function