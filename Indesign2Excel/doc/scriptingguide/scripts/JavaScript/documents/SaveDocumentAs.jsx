//SaveDocumentAs.jsx
//An InDesign CS6 JavaScript
//
//If the document has been changed since it was last saved, 
//save it to the desktop.
main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
	//Create a document to save.
	app.documents.add();
}
//</setup>

//<snippet>
function mySnippet(){
    //<fragment>
    //If the document has been changed since it was last saved, 
    //save to the desktop in a file named by the script.
    if(app.activeDocument.saved == false){
		//If you do not provide a file name, InDesign 
		//will display the Save dialog box.
		app.activeDocument.save(File(Folder.desktop + "/SaveDocumentAs.indd"));
	}
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>

