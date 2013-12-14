Rem UniformSlug.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to use the DocumentSlugUniformSize property.
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
	Rem The slug properties belong to the DocumentPreferences object.
	With myDocument.DocumentPreferences
	Rem Slug:
		.SlugTopOffset = "4p"
		.DocumentSlugUniformSize = True
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function