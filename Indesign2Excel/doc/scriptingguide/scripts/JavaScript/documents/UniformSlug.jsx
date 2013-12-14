//UniformSlug.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the uniform size property of the document slug.

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
    //Shows how to use the uniform size property of the document slug.
    var myDocument = app.documents.item(0);
    //The slug properties belong to the documentPreferences object.
    //<fragment>
    with(myDocument.documentPreferences){
    	//Slug:
    	documentSlugUniformSize = true;
    	slugTopOffset = "4p";
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


