//ApplyMaster.jsx
//An InDesign CS6 JavaScript
//
//Applies a master spread to a page.
//Assumes that you have document open with a master page named "B-Master"
//and at least three pages--page 3 is pages.item(2) because JavaScript arrays
//are zero-based.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.documentPreferences.pagesPerDocument = 3;
	var myMasterSpread = myDocument.masterSpreads.item("B-Master");
	try{
		myMasterSpread.name;
	}
	catch(myError){
		myMasterSpread = myDocument.masterSpreads.add({name:"B-Master"});
	}
}
//</setup>

//<snippet>
function mySnippet(){
    //Applies a master spread to a page.
    //Assumes that you have document open with a master page named "B-Master"
    //and at least three pages--page 3 is pages.item(2) because JavaScript arrays
    //are zero-based.
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(2);
    //<fragment>
    myPage.appliedMaster = myDocument.masterSpreads.item("B-Master");
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>