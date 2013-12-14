//UniformBleed.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the uniform size property of the document bleed.

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
    //Shows how to use the uniform size property of the document bleed.
    var myDocument = app.documents.item(0);
    //The bleed properties belong to the documentPreferences object.
    //<fragment>
    with(myDocument.documentPreferences){
    	//Bleed
    	documentBleedUniformSize = true;
    	documentBleedTopOffset = "2p";
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


