Rem GetEventInfo.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Provides a generic event handler for the EventListenersOn.vbs
Rem tutorial script. Displays event info about any event.
Rem <fragment>
myEventHandler
Function myEventHandler()
	set myInDesign = CreateObject("InDesign.Application")
	if(myInDesign.Events.Count > 0) Then
		myDisplayEventInfo myInDesign.Events.Item(1)
	else
		for myCounter = 1 to myInDesign.documents.count
			if(myInDesign.documents.item(myCounter).events.count > 0) then
				myDisplayEventInfo myInDesign.Documents.Item(myCounter).Events.Item(1)
			end if
		next
	end if
end function
function myDisplayEventInfo(myEvent)
	myString = "Handling Event: " & myEvent.EventType
	myString = myString & vbCr & vbCr & "Target: " & myEvent.Target & " " & myEvent.Target.Name
	myString = myString & vbCr & "Current: " & myEvent.CurrentTarget & " " & myEvent.CurrentTarget.Name
	myString = myString & vbCr & vbCr & "Phase: " & myGetPhaseName(myEvent.EventPhase)
	myString = myString & vbCr & "Bubbles: " & myEvent.Bubbles
	myString = myString & vbCr & vbCr & "Cancelable: " & myEvent.Cancelable
	myString = myString & vbCr & "Stopped: " & myEvent.PropagationStopped
	myString = myString & vbCr & "Canceled: " & myEvent.DefaultPrevented
	myString = myString & vbCr & vbCr & "Time: " & myEvent.TimeStamp
	MsgBox myString, vbOKOnly, "Event Details"
end function
Rem Function returns a string corresponding to the event phase enumeration.
Function myGetPhaseName(myEventPhase)
	Select Case myEventPhase
		Case idEventPhases.idAtTarget
			myPhaseName = "At Target"
		Case idEventPhases.idBubblingPhase
			myPhaseName = "Bubbling"
		Case idEventPhases.idDone
			myPhaseName = "Done"
		Case idEventPhases.idNotDispatching
			myPhaseName = "Not Dispatching"
	end select
	myGetPhaseName = myPhaseName
End Function
Rem </fragment>
