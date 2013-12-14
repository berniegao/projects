Rem TextExportPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets the text export filter preferences.
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
	With myInDesign.TextExportPreferences
		Rem Options for characterSet: idTextExportCharacterSet
		.CharacterSet = idTextExportCharacterSet.idUTF8
		Rem platform options: idImportPlatform
		.Platform = idImportPlatform.idPC
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function