//EventListenersOff.jsx
//An InDesign CS6 JavaScript
//
//Removes all eventListeners from the application object.
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
	if(app.eventListeners.length > 0){
		for(var myCounter = 0; myCounter < app.eventListeners.length; myCounter++){
			app.eventListeners.item(0).remove();
		}
	}
    //</fragment>
}
function myTeardown(){
}