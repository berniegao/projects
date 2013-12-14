//RemoveAfterSelectionAttributeChanged.jsx
//An InDesign CS6 JavaScript
//
//Removes the event listener added by the AfterSelectionAttributeChanged script.
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
	var myResult = app.removeEventListener("afterSelectionAttributeChanged", myCheckForRegistration);
    if(myResult == true){
        alert("Event listener removed");
    }
    else{
        alert("Event listener not removed.");
    }
	//</fragment>
}
function myTeardown(){
}