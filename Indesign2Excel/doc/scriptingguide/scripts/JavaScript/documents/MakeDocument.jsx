//MakeDocument.jsx
//An InDesign CS6 JavaScript
//
//Creates a new document.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
}
//</setup>

//<snippet>
function mySnippet(){
    //<fragment>
    //Creates a new document.
    var myDocument = app.documents.add();
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>