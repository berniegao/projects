//WordRTFImportPreferences.jsx
//An InDesign CS6 JavaScript
//
//Sets the Word/RTF import filter preferences.
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
	with(app.wordRTFImportPreferences){
		//convertPageBreaks property can be:
		//ConvertPageBreaks.columnBreak
		//ConvertPageBreaks.none
		//ConvertPageBreaks.pageBreak
		convertPageBreaks = ConvertPageBreaks.none;
		//convertTablesTo property can be:
		//ConvertTablesOptions.unformattedTabbedText
		//ConvertTablesOptions.unformattedTable
		convertTablesTo = ConvertTablesOptions.unformattedTable;
		importEndnotes = true;
		importFootnotes = true;
		importIndex = true;
		importTOC = true;
		importUnusedStyles = false;
		preserveGraphics = false;
		preserveLocalOverrides = false;
		preserveTrackChanges = false;
		removeFormatting = false;
		//resolveCharacterSytleClash and resolveParagraphStyleClash properties can be:
		//ResolveStyleClash.resolveClashAutoRename
		//ResolveStyleClash.resolveClashUseExisting
		//ResolveStyleClash.resolveClashUseNew
		resolveCharacterStyleClash = ResolveStyleClash.resolveClashUseExisting;
		resolveParagraphStyleClash = ResolveStyleClash.resolveClashUseExisting;
		useTypographersQuotes = true;
	}
	//</fragment>
}
function myTeardown(){
}
