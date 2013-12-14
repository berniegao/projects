Rem TaggedTextExportPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets the tagged text export filter preferences.
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
	Set myInDesign = CreateObject("InDesign.Application")
	With myInDesign.TaggedTextExportPreferences
		Rem Options for characterSet:
		Rem idTagTextExportCharacterSet.idAnsi
		Rem idTagTextExportCharacterSet.idASCII
		Rem idTagTextExportCharacterSet.idGB18030
		Rem idTagTextExportCharacterSet.idKSC5601
		Rem idTagTextExportCharacterSet.idShiftJIS
		Rem idTagTextExportCharacterSet.idUnicode
		.CharacterSet = idTagTextExportCharacterSet.idUnicode
		Rem tagForm options:
		Rem idTagTextForm.idAbbreviated
		Rem idTagTextForm.idVerbose
		.TagForm = idTagTextForm.idVerbose
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function