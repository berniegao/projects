Rem DoScriptScriptArgs.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to return values from a script called using
Rem the doScript method.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application.CS6")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
	Rem <fragement>
	nameA = "ScriptArgumentA"
	nameB = "ScriptArgumentB"
	Rem Create a string to be run as a JavaScript.
	myJavaScript = "app.scriptArgs.setValue(""" & nameA & ""","
	myJavaScript = myJavaScript & """This is the first script argument value."");" & vbCr
	myJavaScript = myJavaScript & "app.scriptArgs.setValue(""" & nameB & ""","
	myJavaScript = myJavaScript & """This is the second script argument value."");" & vbCr
	myInDesign.DoScript myJavaScript, idScriptLanguage.idJavascript
	myScriptArgumentA = myInDesign.ScriptArgs.GetValue(nameA)
	myScriptArgumentB = myInDesign.ScriptArgs.GetValue(nameB)
	MsgBox "JavaScript" & vbcr & "Script argument A: " & myScriptArgumentA & vbCr & "Script argument B: " & myScriptArgumentB
	Rem Create a string to be run as a VBScript.
	myVBScript = "Set myInDesign = CreateObject(""InDesign.Application"")" & vbCr
	myVBScript = myVBScript & "myInDesign.ScriptArgs.SetValue """ & nameA & ""","
	myVBScript = myVBScript & " ""This is the first script argument value.""" & vbCr
	myVBScript = myVBScript & "myInDesign.ScriptArgs.SetValue """ & nameB & ""","
	myVBScript = myVBScript & " ""This is the second script argument value."""
	myInDesign.DoScript myVBScript, idScriptLanguage.idVisualBasic
	myScriptArgumentA = myInDesign.ScriptArgs.GetValue(nameA)
	myScriptArgumentB = myInDesign.ScriptArgs.GetValue(nameB)
	MsgBox "VBScript" & vbcr & "Script argument A: " & myScriptArgumentA & vbCr & "Script argument B: " & myScriptArgumentB
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function