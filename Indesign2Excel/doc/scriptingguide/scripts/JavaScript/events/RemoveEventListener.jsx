//RemoveEventListener.jsx
//An InDesign CS6 JavaScript
//
//Removes the event listener created by the AddEventListener script.
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
    var myResult = app.removeEventListener("afterNew", myDisplayEventType);
    //</fragment>
	if(myResult == true){
		alert("Event Listener removed.");
	}
	else{
		alert("Event listener was not removed");
	}
}
function myTeardown(){
}