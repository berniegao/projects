Rem CloseAll.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Close all open documents without saving.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
    myInDesign.Documents.Add
    myInDesign.Documents.Add
    myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	For myCounter = myInDesign.Documents.Count To 1 Step -1
		myInDesign.Documents.Item(myCounter).Close idSaveOptions.idNo
	Next
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function


