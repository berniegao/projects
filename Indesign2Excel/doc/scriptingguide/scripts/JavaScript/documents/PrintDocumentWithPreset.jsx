//PrintDocumentWithPreset.jsx
//An InDesign CS6 JavaScript
//
//Prints the active document using the specified printer preset.
//Assumes you have a printer preset named "myPrintPreset" and that a document is open.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.pages.item(0).rectangles.add();
	try{
		app.printerPresets.add({name:"myPrinterPreset"});
	}
	catch(myError){}
}
//</setup>

//<snippet>
function mySnippet(){
    //<fragment>
    //Prints the active document using the specified printer preset.
    var myDocument = app.documents.item(0);
    myDocument.print(false, app.printerPresets.item("myPrinterPreset"));
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
 