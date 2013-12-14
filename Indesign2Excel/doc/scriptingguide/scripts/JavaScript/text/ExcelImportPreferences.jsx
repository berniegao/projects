//ExcelImportPreferences.jsx
//An InDesign CS6 JavaScript
//
//Sets the Excel import filter preferences.
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
    with(app.excelImportPreferences){
    	//alignmentStyle property can be:
    	//AlignmentStyleOptions.centerAlign
    	//AlignmentStyleOptions.leftAlign
    	//AlignmentStyleOptions.rightAlign
    	//AlignmentStyleOptions.spreadsheet
    	alignmentStyle = AlignmentStyleOptions.spreadsheet;
    	decimalPlaces = 4;
    	preserveGraphics = false;
    	//Enter the range you want to import as "start cell:end cell".
    	rangeName = "A1:B16";
    	sheetIndex = 1;
    	sheetName = "pathpoints";
    	showHiddenCells = false;
    	//tableFormatting property can be:
        //TableFormattingOptions.excelFormattedTable
        //TableFormattingOptions.excelUnformattedTabbedText
        //TableFormattingOptions.excelUnformattedTable
    	tableFormatting = TableFormattingOptions.excelFormattedTable;
    	useTypographersQuotes = true;
    	viewName = "";	
    }
    //</fragment>
}
function myTeardown(){
}