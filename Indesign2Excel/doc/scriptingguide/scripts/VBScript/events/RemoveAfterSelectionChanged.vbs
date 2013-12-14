Rem RemoveAfterSelectionChanged.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Removes the event listener added by the AfterSelectionChanged script.
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
	Set myDocument = myInDesign.Documents.Item(1)
	myDocument.AddEventListener "afterSelectionChanged", GetRef("myDisplaySelectionType")
	Rem </fragment>
End Function
function myTeardown(myInDesign)
End Function