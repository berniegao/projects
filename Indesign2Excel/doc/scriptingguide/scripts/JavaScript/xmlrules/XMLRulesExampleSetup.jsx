//XMLRulesExampleSetup.jsx
//An InDesign CS6 JavaScript
//
//Sets up the example XML structure used for most of the XML rule scripts
//shown in the Adobe InDesign CS6 Scripting Guide.
main();
function main(){
	var myDocument = app.documents.add();
	myDocument.xmlImportPreferences.allowTransform = false;
	myDocument.xmlImportPreferences.ignoreWhitespace = true;
	var myScriptPath = myGetScriptPath();
	var myFilePath = myScriptPath.path + "/XMLRulesExampleData.xml"
	myDocument.importXML(File(myFilePath));
	var myBounds = myGetBounds(myDocument, myDocument.pages.item(0));
	myDocument.xmlElements.item(0).placeIntoFrame(myDocument.pages.item(0), myBounds);
	function myGetBounds(myDocument, myPage){
		var myWidth = myDocument.documentPreferences.pageWidth;
		var myHeight = myDocument.documentPreferences.pageHeight;
		var myX1 = myPage.marginPreferences.left;
		var myY1 = myPage.marginPreferences.top;
		var myX2 = myWidth - myPage.marginPreferences.right;
		var myY2 = myHeight - myPage.marginPreferences.bottom;
		return [myY1, myX1, myY2, myX2];
	}
	function myGetScriptPath() {
		try {
			return app.activeScript;
		}
		catch(myError){
			return File(myError.fileName);
		}
	}
}
