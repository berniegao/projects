//ApplicationPageMargins.jsx
//An InDesign CS6 JavaScript
//
//Shows how to sets the application default page margins.

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
    //Shows how to sets the application default page margins. All
    //new documents will be created using these settings. Existing
    //documents will be unaffected.
    //<fragment>
    with (app.marginPreferences){
    	//Save the current application default margin preferences.
    	var myY1 = top;
    	var myX1 = left;
    	var myY2 = bottom;
    	var myX2 = right;
    	//Set the application default margin preferences.
    	top = 0;
    	left = 0;
    	bottom = 0;
    	right = 0;
    }
    //Create a new example document to demonstrate the change.
    var myDocument = app.documents.add();
    //At this point, you can set your page size to a small width and
    //height (1x1 picas minimum).
    myDocument.documentPreferences.pageHeight = "1p";
    myDocument.documentPreferences.pageWidth = "1p";
    //Reset the application default margin preferences to their former state.
    with (app.marginPreferences){
    	top = myY1;
    	left = myX1 ;
    	bottom = myY2;
    	right = myX2;
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


