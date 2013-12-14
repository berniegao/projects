Rem Message.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Provides a "onInvoke" event handler for MakeScriptMenuAction
Rem <fragment>
Rem "evt" is the event passed to this script by the event listener.
MsgBox ("This event is the " & evt.EventType & " event.")
Rem </fragment>