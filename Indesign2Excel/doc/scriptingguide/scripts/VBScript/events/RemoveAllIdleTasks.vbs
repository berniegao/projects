Rem RemoveAllIdleTasks.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Remove all InDesign idle tasks.

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
		For Each myIdleTask In myInDesign.IdleTasks
			myIdleTask.Delete()
		Next
		MsgBox(taskCount & " idle task(s) removed.")
	End If
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function
