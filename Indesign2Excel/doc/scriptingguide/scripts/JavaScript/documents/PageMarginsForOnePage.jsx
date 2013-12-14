//PageMarginsForOnePage.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set page margins for a single page.

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
    //Shows how to set page margins for a single page.
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
    //<fragment>
    with (myPage.marginPreferences){
    	columnCount = 3;
    	//columnGutter can be a number or a measurement string.
    	columnGutter = "1p";
        top = "4p"
    	bottom = "6p"
    	//When document.documentPreferences.facingPages == true, 
    	//"left" means inside; "right" means outside.
    	left = "6p"
    	right = "4p"
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


