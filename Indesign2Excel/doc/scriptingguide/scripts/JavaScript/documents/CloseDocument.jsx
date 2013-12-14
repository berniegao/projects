//CloseDocument.jsx
//An InDesign CS6 JavaScript
//
//Close the active document.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    app.documents.add();
    alert ("Document created");
}
//</setup>

//<snippet>
function mySnippet(){
    //Close the active document.
    //<fragment>
    app.documents.item(0).close();
    //Note that:
    //1. documents.item(0) always refers to the front-most document.
    //2. You could also use:
    //      app.activeDocument.close();
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
