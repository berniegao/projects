Rem ListIdleTasks.vbs
Rem An InDesign CS6 VBScript
Rem
Rem List all InDesign idle tasks.

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
	taskCount = myInDesign.IdleTasks.Count
	If taskCount = 0 Then
    	MsgBox("There is no idle task.")
    Else
		str = ""
		For i = 1 To taskCount
			Set myIdleTask = myInDesign.IdleTasks.Item(i)
			str = str &  "idle task " & myIdleTask.id & ": " & myIdleTask.name & VbCrLf
		Next
		MsgBox(str)
	End If
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function
