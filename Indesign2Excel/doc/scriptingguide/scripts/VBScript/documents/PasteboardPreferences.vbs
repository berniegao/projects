Rem PasteboardPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Change the size and preview color of the pasteboard.
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
	With myDocument.PasteboardPreferences
		Rem You can use either a number or a measurement string
		Rem to set the minimum horizontal and vertical pasteboard margins
		.PasteboardMargins = Array("12p","15p")
		Rem You can set the preview background color (which you'll only see
		Rem in Preview mode) to any of the predefined UIColor constants...
		.PreviewBackgroundColor = idUIColors.idGrassGreen
		Rem ...or you can specify an array of RGB values.
		.PreviewBackgroundColor = Array(192, 192, 192)
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function