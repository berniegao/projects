//XMLImportPreferences.jsx
//An InDesign CS6 JavaScript
//
//Sets XML import options.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myXMLImportPreferences = myDocument.xmlImportPreferences;
	myXMLImportPreferences.allowTransform = false;
	myXMLImportPreferences.createLinkToXML = false;
	myXMLImportPreferences.ignoreUnmatchedIncoming = true;
	myXMLImportPreferences.ignoreWhitespace = true;
	myXMLImportPreferences.importCALSTables = true;
	myXMLImportPreferences.importStyle = XMLImportStyles.mergeImport;
	myXMLImportPreferences.importTextIntoTables = false;
	myXMLImportPreferences.importToSelected = false;
	myXMLImportPreferences.removeUnmatchedExisting = false;
	myXMLImportPreferences.repeatTextElements = true;
	//The following properties are only used when the
	//AllowTransform property is set to True.
	//myXMLImportPreferences.transformFilename = "c:\myTransform.xsl"
	//If you have defined parameters in your XSL file, then you can pass
	//parameters to the file during the XML import process. For each parameter,
	//enter an array containing two strings. The first string is the name of the
	//parameter, the second is the value of the parameter.
	//myXMLImportPreferences.transformParameters = [["format", "1"]];
	//</fragment>
}
function myTeardown(){
}