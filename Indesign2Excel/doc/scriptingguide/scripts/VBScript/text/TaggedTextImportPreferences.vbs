Rem TaggedTextImportPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets the tagged text import filter preferences.
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
	With myInDesign.TaggedTextImportPreferences
		.RemoveTextFormatting = False
		Rem .styleConflict property can be:
		Rem idStyleConflict.idPublicationDefinition
		Rem idStyleConflict.idTagFileDefinition
		.StyleConflict = idStyleConflict.idPublicationDefinition
		.UseTypographersQuotes = True
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function