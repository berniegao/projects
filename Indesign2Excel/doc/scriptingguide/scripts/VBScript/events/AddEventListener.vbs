Rem AddEventListener.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a simple event listener.
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
	myInDesign.AddEventListener "afterNew", GetRef("myDisplayEventType")
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myDisplayEventType(en)
	Rem <fragment>
	Rem "myEvent" is the event passed to this function by the event listener.
	MsgBox ("This event is the " & en.EventType & " event.")
	'MsgBox ("This event is the after new event.")
	Rem </fragment>
End Function