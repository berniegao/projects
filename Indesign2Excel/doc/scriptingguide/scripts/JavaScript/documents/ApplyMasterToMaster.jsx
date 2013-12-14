//ApplyMasterToMaster.jsx
//An InDesign CS6 JavaScript
//
//Applies a master page to a master page.
//Assumes that the default master spread name is "A-Master".

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    app.documents.add();
}
//</setup>

//<snippet>
function mySnippet(){
    //Applies a master page to a master page.
    //Assumes that the default master spread name is "A-Master".
    var myDocument= app.documents.item(0);
    //<fragment>
    //Create a new master spread.
    var myBMaster = myDocument.masterSpreads.add();
    myBMaster.namePrefix = "B";
    myBMaster.baseName = "Master";
    //Apply master spread "A" to the first page of the new master spread.
    var myMasterPage = myDocument.masterSpreads.item("B-Master").pages.item(0);
    myMasterPage.appliedMaster = myDocument.masterSpreads.item("A-Master");
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>