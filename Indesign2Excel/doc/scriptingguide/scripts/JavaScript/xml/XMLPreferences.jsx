//XMLPreferences.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set general XML preferences.
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
	var myDocument = app.activeDocument;
	var myXMLPreferences = myDocument.xmlPreferences;
	myXMLPreferences.defaultCellTagColor = UIColors.blue;
	myXMLPreferences.defaultCellTagName = "cell";
	myXMLPreferences.defaultImageTagColor = UIColors.brickRed;
	myXMLPreferences.defaultImageTagName = "image";
	myXMLPreferences.defaultStoryTagColor = UIColors.charcoal;
	myXMLPreferences.defaultStoryTagName = "text";
	myXMLPreferences.defaultTableTagColor = UIColors.cuteTeal;
	myXMLPreferences.defaultTableTagName = "table";
	//</fragment>
}
function myTeardown(){
}