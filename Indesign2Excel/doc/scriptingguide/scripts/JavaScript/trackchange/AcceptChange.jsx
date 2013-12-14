//AcceptChange.jsx
//An InCopy CS6 JavaScript
//
//Accept change.
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
	myAcceptChange();
}
function myTeardown(){
}

function myAcceptChange()
{
    //<fragment>
	var myDocument = app.documents.item(0);
	var myStory = myDocument.stories.item(0);
	var myChange = myStory.changes.item(0);
	myChange.accept() ;
    //</fragment>
}
