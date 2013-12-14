Rem RemoveEventListener.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Removes the event listener created by the AddEventListener script.
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
	myResult = myInDesign.RemoveEventListener("afterNew", "myDisplayEventType")
	If myResult = True Then
		MsgBox "Event listener removed."
	Else
		MsgBox "Event listener not removed."
	End If
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function