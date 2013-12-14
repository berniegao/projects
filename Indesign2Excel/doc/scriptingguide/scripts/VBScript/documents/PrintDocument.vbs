Rem PrintDocument.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Prints the active document.
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
	set myDocument = myInDesign.Documents.Add
	Rem The document is blank. So have to set the print
	Rem preferences
	With myDocument.PrintPreferences
	    .PrintBlankPages = True
	End With
	Rem The PrintOut method has two optional parameters:
	Rem PrintDialog -- if true, display the Print dialog box
	Rem Using -- if specified, use a named printer preset.
	Rem The following line prints the document using the default
	Rem settings without displaying the Print dialog box.
	myDocument.PrintOut False
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function