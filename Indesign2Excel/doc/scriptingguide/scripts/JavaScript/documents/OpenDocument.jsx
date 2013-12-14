//OpenDocument.jsx
//An InDesign CS6 JavaScript
//
//Opens an existing document. You'll have to fill in your own file path.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    var myDocument = app.documents.add();
	//Creates a new document on the desktop.
    myDocument = myDocument.save(File(Folder.desktop + "/OpenDocument.indd"));
    myDocument.close();
}
//</setup>

//<snippet>
function mySnippet(){
    //<fragment>
    //Opens an existing document. You'll have to fill in your own file path.
    var myDocument = app.open(File(Folder.desktop + "/OpenDocument.indd"));
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>

