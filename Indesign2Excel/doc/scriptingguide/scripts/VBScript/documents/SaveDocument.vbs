Rem SaveDocument.vbs
Rem An InDesign CS6 VBScript
Rem
Rem If the document has been changed since it was last saved, save it.
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
	Rem If the document has been changed since it was last saved, save it.
	Rem If the file is untitled, InDesign will display the Save dialog box.
	Rem <fragment>
	If myDocumentSaved = False Then
		myDocument.Save
	End If
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function