//CloseWithParameters.jsx
//An InDesign CS6 JavaScript
//
//Close the active document with parameters.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    //Create and save a new document.
    var myDocument = app.documents.add();
    myDocument = myDocument.save(File(Folder.desktop + "/CloseWithParameters.indd"));
    //Modify the document to force script to ask to save.
    myDocument.pages.add()
}
//</setup>

//<snippet>
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    //Close the active document with parameters:
    //   Use SaveOptions.yes to save the document
    //    or SaveOptions.no  to close the document without saving
    //    or SaveOptions.ask to display a prompt.
    //If you use SaveOptions.yes, you'll need to provide a reference to a file 
    //to save to in the second parameter. Saving to a file name is the
	//same as doing a Save As from the user interface--the file name can be
	//a different file name or the same as the existing file name.
    if(myDocument.modified == true){
    	//(You'll have to fill in your own file path):
    	var myFile = File(Folder.desktop + "/CloseWithParametersModified.indd");
    	myDocument.close(SaveOptions.ask, myFile);
        //Or, to save to a user-specified file name:
        //myDocument.close(SaveOptions.ask);
    }else{
    	//If the file has not been modified, simply close it.
    	myDocument.close(SaveOptions.no);
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
