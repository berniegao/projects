Rem ImportPreflightProfiles.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to import an InDesign preflight profiles.

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
	Set myProfile = myInDesign.LoadPreflightProfile("c:\Test.idpp")
	MsgBox("Preflight profile " & myProfile.Name & " is loaded.")
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function
