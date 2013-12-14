//ScriptLabels.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set script labels and how to
//get references to page items by label.

main();

function main()
{
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup()
{
}
//</setup>

//<snippet>
function mySnippet()
{
    //Access the active document and page.
    var myDocument = app.documents.add();
    var myPage = myDocument.pages.item(0);
    var myX1, myX2, myY1, myY2, myRectangle;
    var myPageWidth = myDocument.documentPreferences.pageWidth;
    var myPageHeight = myDocument.documentPreferences.pageHeight;
    //<fragment>
    //Create 10 random page items.
    for(var i = 0; i < 10; i++)
    {
    	myX1 = myGetRandom(0, myPageWidth, false);
    	myY1 = myGetRandom(0, myPageHeight, false);
    	myX2 = myGetRandom(0, myPageWidth, false);
    	myY2 = myGetRandom(0, myPageHeight, false);
    	myRectangle = myPage.rectangles.add({geometricBounds:[myY1, myX1, myY2, myX2]});
    	if(myGetRandom(0, 1, true))
        {
    		myRectangle.label = "myScriptLabel";
    	}
    }
    var count = 0;
    for(var i = 0; i < myPage.pageItems.length; i++)
    {
        if(myPage.pageItems.item(i).label == "myScriptLabel")
        {
            count++;
        }
    }
    alert("Found " + count + " page items with the label.");
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown()
{
}
//</teardown>

//<fragment>
//This function gets a random number in the range myStart to myEnd.
function myGetRandom(myStart, myEnd, myInteger)
{
	var myRandom;
	var myRange = myEnd - myStart; 
	if(myInteger == true)
    {
		myRandom = myStart = Math.round(Math.random());
	}
	else
    {
		myRandom = myStart + Math.floor(Math.random()*myRange);
	}
	return myRandom;
}
//</fragment>