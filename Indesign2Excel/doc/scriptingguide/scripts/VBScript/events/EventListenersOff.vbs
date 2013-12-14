Rem EventListenersOff.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Removes all event listeners from the application and all open documents.
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
	For myCounter = 1 To myInDesign.EventListeners.Count
		myInDesign.EventListeners.Item(1).Delete
	Next
	For myCounter = 1 To myInDesign.Documents.Count
		For myDocumentEventCounter = 1 To myInDesign.Documents.Item(myCounter).EventListeners.Count
			myInDesign.Documents.Item(myCounter).EventListeners.Item(1).Delete
		Next
	Next
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function