Rem TranslateKeyString.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Translates a key string (locale-independent) into a locale-specific string.
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
	Rem Fill in the appropriate key string in the following line.
	myString = myInDesign.TranslateKeyString("$ID/Convert To Note")
	MsgBox myString
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function