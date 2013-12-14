//TextExportPreferences.jsx
//An InDesign CS6 JavaScript
//
//Sets the text export filter preferences.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
}
function mySnippet(){
	//<fragment>
	with(app.textExportPreferences){
		//Options for characterSet: TextExportCharacterSet
		characterSet = TextExportCharacterSet.UTF8;
		//platform options: ImportPlatform
		platform = ImportPlatform.macintosh;
	}
	//</fragment>
}
function myTeardown(){
}
