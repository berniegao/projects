//GetTrackchange.jsx
//An InCopy CS6 JavaScript
//
//Shows how to get Track change from doc.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
}
function mySnippet(){
	var myDocument = app.documents.add();
    var myTextFrame = myDocument.textFrames.add({geometricBounds: [0, 0, 12, 12], contents: "This is a story."});
	myGetChangeFromDoc();
}
function myTeardown(){
}
function myGetChangeFromDoc()
{
    //<fragment>
	var myDocument = app.documents.item(0);
	var myStory = myDocument.stories.item(0);
	//Story.trackChanges   If true, track changes is turned on.
	if(myStory.trackChanges==true)
	{
		var myChangeCount = myStory.changes.length;
		var myChange = myStory.changes.item(0);
		if(myChangeCount>1)
		{
			var myChange0 = myStory.changes.nextItem(myChange);
		}
	}
    //</fragment>
}

function myGetChangeFromDoc1()
{
	var myDocument = app.documents.item(0);
	var myStory = myDocument.stories.item(0);
	//Story.trackChanges   If true, track changes is turned on.
	if(myStory.trackChanges==true)
	{
		var myChangeCount = myStory.changes.length;
		var myChange = myStory.changes.lastItem();
		if(myChangeCount>1)
		{
			var myChange0 = myStory.changes.previousItem(myChange);
		}
	}
}