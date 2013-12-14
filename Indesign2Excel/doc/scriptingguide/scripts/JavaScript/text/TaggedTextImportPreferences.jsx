//TaggedTextImportPreferences.jsx
//An InDesign CS6 JavaScript
//
//Sets the tagged text import filter preferences.
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
	with(app.taggedTextImportPreferences){
		removeTextFormatting = false;
		//styleConflict property can be:
		//StyleConflict.publicationDefinition
		//StyleConflict.tagFileDefinition
		styleConflict = StyleConflict.publicationDefinition;
		useTypographersQuotes = true;
	}
	//</fragment>
}
function myTeardown(){
}