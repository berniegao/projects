//ListIdleTasks.jsx
//An InDesign CS6 JavaScript
//
//List all InDesign idle tasks.

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
    var length = app.idleTasks.length;
    if (length == 0)
    {
        alert("There is no idle task.");
    }
    else
    {
        var str = "";
        for (var i = 0; i < length; i++)
        {
            var myIdleTask = app.idleTasks.item(i);
            str += "idle task " + myIdleTask.id + ": " + myIdleTask.name + "\n";
        }
        alert(str);
    }
    //<fragment>
}

function myTeardown()
{
}
