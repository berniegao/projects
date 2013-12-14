Rem MultipleEventListeners.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows that an event can trigger multiple event listeners.
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
	myInDesign.AddEventListener "beforeImport", GetRef("myEventInfo")
	Set myDocument = myInDesign.Documents.Add
	myInDesign.Documents.Item(1).AddEventListener "beforeImport", GetRef("myEventInfo")
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myEventInfo(en)
	myString = "Current Target: " & en.currentTarget.name
	MsgBox(myString)
End Function