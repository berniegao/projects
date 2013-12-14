//SaveAsTemplate.jsx
//An InDesign CS6 JavaScript
//
//Save the active document as a template.

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
	var myFileName;
	//<fragment>
	//Save the active document as a template.
	var myDocument = app.documents.item(0);
	if (myDocument.saved == true){
		//Convert the file name to a string.
		myFileName = myDocument.fullName + "";
		//If the file name contains the extension ".indd", change it to ".indt".
		if(myFileName.indexOf(".indd")!=-1){
			var myRegularExpression = /.indd/gi
			myFileName = myFileName.replace(myRegularExpression, ".indt");
		}
	}
	else{
		//If the document has not been saved, then give it 
		//a default file name.
		myFileName = "SaveAsTemplate.indt";
	}
	//Save the file to the desktop.
	myDocument.save(File(Folder.desktop + "/" + myFileName), true);
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>

