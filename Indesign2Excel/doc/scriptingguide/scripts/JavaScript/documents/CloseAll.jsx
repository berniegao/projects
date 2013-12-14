//CloseAll.jsx
//An InDesign CS6 JavaScript
//
//Close all open documents without saving.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    app.documents.add();
    app.documents.add();
    app.documents.add();
}
//</setup>

//<snippet>
function mySnippet(){
    //Close all open documents without saving.
    //<fragment>
    for(myCounter = app.documents.length; myCounter > 0; myCounter--){
    	app.documents.item(myCounter-1).close(SaveOptions.no);
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>