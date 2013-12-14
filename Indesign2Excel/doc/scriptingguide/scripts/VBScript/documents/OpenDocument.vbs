Rem OpenDocument.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Opens an existing document.
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
	Rem You'll have to fill in your own file path.
	Set myDocument = myInDesign.Open("C:\OpenDocument.indd")
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function