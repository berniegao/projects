Rem ProcessPreflightProfile.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to process an InDesign preflight profile.

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
	Rem Assume there is an document.
	Set myDoc = myInDesign.Documents.Item(1)
	Rem Use the second preflight profile
	Set myProfile = myInDesign.PreflightProfiles.Item(2)

	Rem Process the doc with the rule
	Set myProcess = myInDesign.PreflightProcesses.Add(myDoc, myProfile)
	myProcess.WaitForProcess()
	results = myProcess.ProcessResults

	Rem If Errors were found
	If results <> "None" Then
		Rem Export the file to PDF. The "true" value selects to open the file after export.
		myProcess.SaveReport("c:\PreflightResults.pdf")
	End If

	Rem Cleanup
	myProcess.Delete()
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function
