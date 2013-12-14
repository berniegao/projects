//RemoveIdleTask.jsx
//An InDesign CS6 JavaScript
//
//Remove InDesign idle task with the specified name.

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
    if (app.idleTasks.length == 0)
    {
        alert("There is no idle task.");
    }
    else
    {
        var myIdleTaskName = "my_idle_task";
        var myIdleTask = app.idleTasks.itemByName(myIdleTaskName);
        if (myIdleTask != null)
        {
            myIdleTask.remove();
        }
        else
        {
            alert("There is no idle task " + myIdleTaskName);
        }
    }
    //<fragment>
}

function myTeardown()
{
}
