Rem EventInfo.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Provides a "beforeImport" event handler to the MultipleEventListeners.vbs script.
Rem Displays information about an Event object; called from an EventListener.
Rem <fragment>
Rem "evt" is the event passed to this script by the event listener.
myEventListener evt
Function myEventListener(myEvent)
	myString = "Current Target: " & myEvent.CurrentTarget.Name
	MsgBox myString, vbOKOnly, "Event Details"
end function
Rem </fragment>