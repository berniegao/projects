//PageMargins.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set the margins of a document.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    var myDocument = app.documents.add();
    myDocument.pages.add();
}
//</setup>

//<snippet>
function mySnippet(){
    //Shows how to set the margins of a document.
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
    myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
    myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
    myDocument.documentPreferences.pageWidth = "40p";
    myDocument.documentPreferences.pageHeight = "60p";
    myDocument.documentPreferences.facingPages = true;
    //<fragment>
    with (myDocument.marginPreferences) {
        top = 56;
        bottom = 24;
        left = 48;
        right = 10;
    }
    //The following assumes that your default document contains a single page.
    with (myPage.marginPreferences) {
        top = 56;
        bottom = 24;
        //When document.documentPreferences.facingPages = true,
        //"left" means inside and "right" means outside.
        left = 48;
        right = 10;
    }
    //The following assumes that your default master spread contains two pages.
    with (myDocument.masterSpreads.item(0).pages) {
        with (item(0).marginPreferences) {
            top = 56;
            bottom = 24;
            left = 48;
            right = 10;
        }
        with (item(1).marginPreferences) {
            top = 56;
            bottom = 24;
            left = 48;
            right = 10;
        }
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


