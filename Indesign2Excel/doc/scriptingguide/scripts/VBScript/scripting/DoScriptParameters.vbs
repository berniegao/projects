Rem DoScriptParameters.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to send parameters to a script called using
Rem the DoScript method.
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
	Rem <fragment>
	myParameters = Array("Hello from DoScript", "Your message here.")
	myJavaScript = "alert(""First argument: "" + arguments[0] +"
	myJavaScript = myJavaScript & " ""\rSecond argument: "" + arguments[1]);"
	myInDesign.DoScript myJavaScript, idScriptLanguage.idJavascript, myParameters
	myVBScript = "msgbox ""First argument: "" & arguments(0) & vbcr & ""Second argument: "" & arguments(1), vbOKOnly,""DoScript Parameters"""
	myInDesign.DoScript myVBScript, idScriptLanguage.idVisualBasic, myParameters
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function