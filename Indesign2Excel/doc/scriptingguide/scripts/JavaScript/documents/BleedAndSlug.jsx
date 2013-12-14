//BleedAndSlug.jsx
//An InDesign CS6 JavaScript
//
//Shows how to define the bleed and slug areas of a document.

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
    //Shows how to define the bleed and slug areas of a document.
    var myDocument = app.documents.add();
    //The bleed and slug properties belong to the documentPreferences object.
    //<fragment>
    with(myDocument.documentPreferences){
    	//Bleed
    	documentBleedBottomOffset = "3p";
    	documentBleedTopOffset = "3p";
    	documentBleedInsideOrLeftOffset = "3p";
    	documentBleedOutsideOrRightOffset = "3p";
    	//Slug
    	slugBottomOffset = "18p";
    	slugTopOffset = "3p";
    	slugInsideOrLeftOffset = "3p";
    	slugRightOrOutsideOffset = "3p";
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


