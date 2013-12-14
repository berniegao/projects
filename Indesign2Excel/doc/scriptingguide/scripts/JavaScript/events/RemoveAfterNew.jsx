//RemoveAfterNew.jsx
//An InDesign CS6 JavaScript
//
//Removes the event listener added with the AfterNew script.
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
	app.removeEventListener("afterNew", myAfterNewHandler);
    //</fragment>
}
function myTeardown(){
}