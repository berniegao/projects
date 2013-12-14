Rem ApplyMasterToMaster.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Applies a master page to a master page.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
    Set myDocument = myInDesign.Documents.Add
    Rem Disable normal error handling.
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Rem <fragment>
	Rem Create a new master spread.
	On Error Resume Next
	Set myMasterSpread = myDocument.MasterSpreads.Item("B-Master")
	Rem If the master spread did not exist, handle the error
	Rem and create the master spread.
	If(Err<>0) Then
		Set myMasterSpread = myDocument.MasterSpreads.Add
		myMasterSpread.Name = "B-Master"
		Err.Clear
	End If
	Rem Restore normal error handling.
	On Error Goto 0
	Set myMasterPage = myMasterSpread.Pages.Item(1)
	Set myMasterPage.AppliedMaster = myDocument.MasterSpreads.Item(1)
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function

