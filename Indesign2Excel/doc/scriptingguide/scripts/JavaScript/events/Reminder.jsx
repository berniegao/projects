//Reminder.jsx
//An InDesign CS6 JavaScript
//
//Add an event listener to the idle tasks that periodically
//reminds the user to save their work.
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
	var myIdleTask = app.idleTasks.add({name:"myIdleTask", sleep:10000});
	var onIdleEventListener = myIdleTask.addEventListener("onIdle", onIdleEventHandler);
	//</fragment>
}
function myTeardown(){
}
//<fragment>
function onIdleEventHandler(myIdleEvent){
	if (app.documents.length != 0){
		//Because this alert might be triggered while a model dialog is open,
		//use try.. to keep from causing a scripting error message.
		try{
			var myResult = confirm("You haven't saved your document lately.\r\rRemove this reminder?", false, "Reminder");
			if(myResult == true){
				myIdleEvent.parent.sleep = 0;
				app.removeEventListener(IdleEvent.ON_IDLE, onIdleEventHandler);
			}
		}
		catch(myError){}
	}
}
//</fragment>
