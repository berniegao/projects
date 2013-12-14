//RemoveAllIdleTasks.jsx
//An InDesign CS6 JavaScript
//
//Remove all InDesign idle tasks.

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
        for (var i = length-1; i >=0; i--)
        {
            app.idleTasks.item(i).remove();
        }
        alert(length + " idle task(s) removed.");
    }
    //<fragment>
}

function myTeardown()
{
}
