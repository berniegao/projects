//OpenDocumentInBackground.jsx
//An InDesign CS6 JavaScript
//
//Opens an existing document in the background, then shows the document.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    var myDocument = app.documents.add();
	//Create a new document on the desktop.
    myDocument = myDocument.save(File(Folder.desktop + "/OpenDocInBackground.indd"));
    myDocument.close();
}
//</setup>

//<snippet>
function mySnippet(){
    //<fragment>
    //Opens an existing document in the background, then shows the document.
    //You'll have to fill in your own file path.
    var myDocument = app.open(File(Folder.desktop + "/OpenDocInBackground.indd"), false);
    //At this point, you could do things with the document without showing the
    //document window. This can speed up many scripting
    //operations, and makes it possible for a script to operate
    //on a file in the background.
    myAlert ("Document is open but not visible.");
    //When you want to show the hidden document, create a new window.
    var myLayoutWindow = myDocument.windows.add();
    myAlert ("Document is now visible.");
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
    var myDocument = app.documents.item(0);
    myDocument.close();
}
//</teardown>
function myAlert(myAlertString){
	var myDialog = app.dialogs.add({name:"Alert", canCancel:false});
	with(myDialog.dialogColumns.add()){
		staticTexts.add({staticLabel:myAlertString});
	}
	myDialog.show();
	myDialog.destroy();
}

