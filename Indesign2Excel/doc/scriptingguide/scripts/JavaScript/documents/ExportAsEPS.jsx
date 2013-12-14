//ExportAsEPS.jsx
//an InDesign CS6 JavaScript
//
//Exports the pages of the active document as EPS.

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
    //<fragment>
    var myDocument = app.documents.item(0);
    var myFile = File(Folder.desktop + "/ExportAsEPS.eps");
    myDocument.exportFile(ExportFormat.epsType, myFile, false);
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
 
