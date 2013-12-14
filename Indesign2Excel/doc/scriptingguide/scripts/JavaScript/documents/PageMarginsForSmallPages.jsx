//PageMarginsForSmallPages.jsx
//An InDesign CS6 JavaScript
//
//Shows how to avoid errors when setting margins for a small page size.

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
    //Shows how to avoid errors when setting margins for a small page size.
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
    //<fragment>
    //The following assumes that your document contains a single page.
    with (myPage.marginPreferences) {
        top = 0;
        left = 0;
        bottom = 0;
        right = 0;
    }
    //The following prevents errors when new pages are added.
    with (myDocument.marginPreferences) {
        top = 0;
        left = 0;
        bottom = 0;
        right = 0;
    }
    //The following assumes that your default master spread contains two pages.
    with (myDocument.masterSpreads.item(0)) {
        with (pages.item(0).marginPreferences) {
            top = 0;
            left = 0;
            bottom = 0;
            right = 0;
        }
        with (pages.item(1).marginPreferences) {
            top = 0;
            left = 0;
            bottom = 0;
            right = 0;
        }
    }
    //At this point, you can set your page size to a small width and height
    //(1x1 picas minimum).
    myDocument.documentPreferences.pageHeight = "1p";
    myDocument.documentPreferences.pageWidth = "6p";
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>

