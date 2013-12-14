//TaggedTextExportPreferences.jsx
//An InDesign CS6 JavaScript
//
//Sets the tagged text export filter preferences.
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
	with(app.taggedTextExportPreferences){
		//Options for characterSet:
		//TagTextExportCharacterSet.ansi
		//TagTextExportCharacterSet.ascii
		//TagTextExportCharacterSet.gb18030
		//TagTextExportCharacterSet.ksc5601
		//TagTextExportCharacterSet.shiftJIS
		//TagTextExportCharacterSet.unicode
		characterSet = TagTextExportCharacterSet.unicode;
		//tagForm options:
		//TagTextForm.abbreviated
		//TagTextForm.verbose
		tagForm = TagTextForm.verbose;
	}
	//</fragment>
}
function myTeardown(){
}