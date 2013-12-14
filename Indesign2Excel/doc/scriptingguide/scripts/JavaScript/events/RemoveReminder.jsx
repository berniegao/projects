//RemoveReminder.jsx
//An InDesign CS6 JavaScript
//
//Removes the idle task created byt he Reminder.jsx script.
#targetengine "session"
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
}
function mySnippet(){
	//<fragment>
	if (app.idleTasks.length == 0){
		alert("There are currently no idle tasks running.");
	}
	else{
		var myIdleTaskName = "myIdleTask";
		var myIdleTask = app.idleTasks.itemByName(myIdleTaskName);
		if (myIdleTask != null){
			myIdleTask.remove();
			alert("Removed idle task named: " + myIdleTaskName);
		}
		else{
			alert("There are no idle tasks named: " + myIdleTaskName);
		}
	}
	//</fragment>
}
function myTeardown(){
}