Rem WhatIsSelected.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Provides a "onInvoke" event handler for the BeforeDisplay.vbs
Rem tutorial script. When invoked, display a message about the selection.
Set myInDesign = CreateObject("InDesign.Application")
Rem <fragment>
myString = TypeName(myInDesign.Selection.Item(1))
MsgBox "The first item in the selection is a " & myString & "."
Rem </fragment>

