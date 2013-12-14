Rem ProcessPreflightProfileShowErrors.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to process a preflight profile and show errors in a message box.

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
	myResults = myProcess.ProcessResults

	Rem If errors were found
	If myResults <> "None" Then
		Rem array containing detailed results
		errors = myProcess.AggregatedResults
		Rem Show the errors in a message box.
		str = "Document Name: " & errors(0) & ", Profile Name: " & errors(1) & ", Results: ["
		errorResults = errors(2)
		For i = 0 to UBound(errorResults)
			If i > 1 Then
				str = str & ", "
			End If
			str = str & errorResults(i)(1)
		Next
		str = str & "]"
		MsgBox(str)
	End If

	Rem Cleanup
	myProcess.Delete()
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function
