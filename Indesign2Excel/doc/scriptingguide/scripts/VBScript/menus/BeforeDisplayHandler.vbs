Rem BeforeDisplayHandler.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Provides a "beforeDisplay" event handler for the BeforeDisplay.vbs
Rem tutorial script. If one or more items are selected, enable the menu item. 
Rem <fragment>
Set myInDesign = CreateObject("InDesign.Application")
Set mySampleScriptAction = myInDesign.ScriptMenuActions.Item("Display Message")
If myInDesign.Selection.Count > 0 Then
	mySampleScriptAction.Enabled = True
Else
	mySampleScriptAction.Enabled = False
End If
Rem </fragment>