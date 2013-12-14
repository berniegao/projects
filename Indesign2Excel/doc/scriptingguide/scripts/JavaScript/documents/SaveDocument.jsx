//SaveDocument.jsx
//An InDesign CS6 JavaScript
//
//If the document has been changed since it was last saved, save it.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

// <setup>
function mySetup(){
}
// </setup>

// <snippet>
function mySnippet(){
    var myDocument = app.documents.item(0);
    //If the document has been changed since it was last saved, save it.
    //If the file is untitled, InDesign will display the Save dialog box.
    //<fragment>
    if(myDocument.modified == true){
    	myDocument.save();
    }
    //</fragment>
}
// </snippet>

// <teardown>
function myTeardown(){
}
// </teardown>