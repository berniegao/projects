Rem DocumentPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Use the documentPreferences object to change the page height, width,
Rem orientation, and the number of pages of a new document.
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
	With myDocument.DocumentPreferences
		.PageHeight = "800pt"
		.PageWidth = "600pt"
		.PageOrientation = idPageOrientation.idLandscape
		.PagesPerDocument = 16
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function