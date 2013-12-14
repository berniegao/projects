Rem OnIdle.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates an event listener that will run when InDesign is idle.

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
    Set myIdleTask = myInDesign.IdleTasks.Add()
    myIdleTask.Name = "my_idle_task"
    myIdleTask.Sleep = 10000
    Rem You need to fill in your own file path.
    fileName = "C:\scripting\OnIdleEventHandler.vbs"
    Set onIdleEventListener = myIdleTask.AddEventListener("onIdle", fileName, False)
    MsgBox("Created idle task " & myIdleTask.Name & "; added event listener on " & onIdleEventListener.EventType)
	Rem </fragment>
	
End Function

Function myTeardown(myInDesign)
End Function
