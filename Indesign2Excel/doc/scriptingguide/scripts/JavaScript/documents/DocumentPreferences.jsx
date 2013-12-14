//DocumentPreferences.jsx
//An InDesign CS6 JavaScript
//
//Use the documentPreferences object to change the page height, width,
//orientation, and the number of pages of a new document.

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
    //Use the documentPreferences object to change the page height, width,
    //orientation, and the number of pages of a new document.
    var myDocument = app.documents.item(0);
    //<fragment>
    with(myDocument.documentPreferences){
    	pageHeight = "800pt";
    	pageWidth = "600pt";
    	pageOrientation = PageOrientation.landscape;
    	pagesPerDocument = 16;
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>