//OnIdle.jsx
//An InDesign CS6 JavaScript
//
//Creates an event listener that will run when InDesign is idle.

#targetengine "session"

main();

function main()
{
    mySetup();
    mySnippet();
    myTeardown();
}

function mySetup()
{
}

function mySnippet()
{
    //<fragment> 
    var myIdleTask = app.idleTasks.add({name:"my_idle_task", sleep:10000});
    var onIdleEventListener = myIdleTask.addEventListener("onIdle", onIdleEventHandler, false);
    alert("Created idle task " + myIdleTask.name + "; added event listener on " + onIdleEventListener.eventType);
    //<fragment>
}

function myTeardown()
{
}

//<fragment>
function onIdleEventHandler(myIdleEvent)
{
    if (app.documents.length == 0)
    {
        var myDoc = app.documents.add();
        alert("Created document " + myDoc.name + " in idle task.");
        return;
     }

    var myTextFrames = app.activeDocument.pages.item(0).textFrames;
    if (myTextFrames.length == 0)
    {
         var myTextFrame = myTextFrames.add();
         myTextFrame.geometricBounds = ["72pt", "72pt", "288pt", "288pt"];
         myTextFrame.contents = "Text frame created in idle task";
         alert("Created a text frame in idle task.");
         return;
    }

    //Delete idle task by setting its sleep time to zero.
    myIdleEvent.parent.sleep = 0;
    alert("Nothing to do. Delete idle task.");
}
//<fragment>
