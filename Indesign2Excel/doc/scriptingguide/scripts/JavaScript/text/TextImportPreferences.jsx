//TextImportPreferences.jsx
//An InDesign CS6 JavaScript
//
//Sets the text import filter preferences.
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
	with(app.textImportPreferences){
		//Options for characterSet: TextImportCharacterSet.
		characterSet = TextImportCharacterSet.UTF8;
		convertSpacesIntoTabs = true;
		spacesIntoTabsCount = 3;
		//The dictionary property can take many values, such as French, Italian.
		dictionary = "English: USA";
		//platform options: ImportPlatform
		platform = ImportPlatform.macintosh;
		stripReturnsBetweenLines = true;
		stripReturnsBetweenParagraphs = true;
		useTypographersQuotes = true;
	}
	//</fragment>
}
function myTeardown(){
}

