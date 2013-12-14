Rem RemoveIdleTask.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Remove InDesign idle task with the specified name.

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
		myIdleTaskName = "my_idle_task"
		For Each myIdleTask In myInDesign.IdleTasks
			If myIdleTask.Name = myIdleTaskName Then
				myIdleTask.Delete()
			End If
			MsgBox("Idle task " & myIdleTaskName & " removed.")
		Next
	End If
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function
