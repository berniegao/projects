Rem ListPreflightRules.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to list all InDesign preflight rules in a profile.

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
	Rem Assume the [Basic] profile exists
	Set myProfile = myInDesign.PreflightProfiles.Item(1)
	Set myRules = myProfile.PreflightProfileRules
	ruleCount = myRules.Count
	str = "Preflight rules of " & myProfile.Name + ": "
	For i = 1 To ruleCount
		If i > 1 Then
			str = str & ", "
		End If
		str = str & myRules.Item(i).Name
	Next
	MsgBox(str)
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function
