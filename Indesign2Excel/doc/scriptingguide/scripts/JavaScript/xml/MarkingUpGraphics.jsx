//MarkingUpGraphics.jsx
//An InDesign CS6 JavaScript
//
//Shows how to mark up graphics with XML elements.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	//Create an example document.
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
	myDocument.documentPreferences.pageWidth = 222 + 72;
	myDocument.documentPreferences.pageHeight = 214.658 + 72;
	var myPage = myDocument.pages.item(0);
	app.polygonPreferences.numberOfSides = 5;
	app.polygonPreferences.insetPercentage = 50;
	var myPolygon = myPage.polygons.add({geometricBounds:[72, 72, 214.658, 222]});
	myPolygon.exportFile(ExportFormat.pdfType, File(Folder.desktop + "/test.pdf"));
	myDocument.close(SaveOptions.no);
	myDocument = app.documents.add();
	myDocument.pages.item(0).place(File(Folder.desktop + "/test.pdf"));
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myXMLTag = myDocument.xmlTags.add("graphic");
    var myGraphic = myDocument.pages.item(0).pageItems.item(0).graphics.item(0);
    //Associate the graphic with a new XML element as you create the element.
    var myXMLElement = myDocument.xmlElements.item(0).xmlElements.add(myXMLTag, myGraphic);
    //</fragment>
}
function myTeardown(){
}