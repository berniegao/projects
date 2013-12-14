//ExportPDF.jsx
//An InDesign CS6 JavaScript
//
//Exports a document to a PDF file.
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
    //Exports a document to a PDF file.
    //Assumes you have a document open.
    var myDocument = app.documents.item(0);
    //The document.export parameters are:
    //Format as (use either the ExportFormat.pdfType enumeration
    //or the string "Adobe PDF")
    //To as File
    //ShowingOptions as boolean (setting this option to true displays the 
    //PDF Export dialog box)
    //Using as PDF export preset (or a string that is the name of a 
    //PDF export preset)
    //You'll have to fill in a valid file path for your system.
    myDocument.exportFile(
		ExportFormat.pdfType,
		File(Folder.desktop + "/ExportPDF.pdf"), 
		false
	);
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
 