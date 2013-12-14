//RejectChange.jsx
//An InCopy CS6 JavaScript
//
//Reject change.
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
	myRejectChange();
}
function myTeardown(){
}

function myRejectChange()
{
    //<fragment>
	var myDocument = app.documents.item(0);
	var myCount = myDocument.assignments.count();
	var myStory = myDocument.stories.item(0);
	var myChange = myStory.changes.item(0);
	myChange.reject() ;
    //</fragment>
}