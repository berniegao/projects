//ExportInteractivePDF.jsx
//An InDesign CS6 JavaScript
//
//Shows how to work with multiple timing lists in an animation.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
	myDocument.documentPreferences.pagesPerDocument = 12;
	myDocument.documentPreferences.facingPages = false;
	var myPageWidth = myDocument.documentPreferences.pageWidth;
    var myPageHeight = myDocument.documentPreferences.pageHeight;
    //If the master spread contains more than a single
    //page, delete the additional pages.
    var myMasterSpread = myDocument.masterSpreads.item(0);
    for(var myCounter = 0; myCounter < myMasterSpread.pages.length; myCounter ++){
    	myMasterSpread.pages.item(0).remove();
    }
    var myTextFrame = myMasterSpread.pages.item(0).textFrames.add({geometricBounds:[0, 0, myPageHeight, myPageWidth], contents:SpecialCharacters.autoPageNumber});
    myTextFrame.textFramePreferences.verticalJustification = VerticalJustification.centerAlign;
    myTextFrame.texts.item(0).pointSize = 72;
    myTextFrame.texts.item(0).justification = Justification.centerAlign;
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	//<fragment>
	//Given a document "myDocument," add page transitions...
	for(var myCounter = 0; myCounter < myDocument.spreads.length; myCounter++){
		myDocument.spreads.item(myCounter).pageTransitionType = PageTransitionTypeOptions.wipeTransition;
		myDocument.spreads.item(myCounter).pageTransitionDirection = PageTransitionDirectionOptions.down;
		myDocument.spreads.item(myCounter).pageTransitionDuration = PageTransitionDurationOptions.medium;
	}
	app.interactivePDFExportPreferences.flipPages = true;
	app.interactivePDFExportPreferences.flipPagesSpeed = 5;
	app.interactivePDFExportPreferences.openInFullScreen = true;
	app.interactivePDFExportPreferences.interactivePDFInteractiveElementsOption = InteractivePDFInteractiveElementsOptions.includeAllMedia;
	//Export the document to PDF.
	myDocument.exportFile(ExportFormat.interactivePDF,File(Folder.desktop + "/InteractivePDF.pdf"), false);
	//</fragment>
}
function myTeardown(){
}
function myAddColor(myDocument, myColorName, myColorModel, myColorValue){
	var myColor;
	if(myDocument.colors.item(myColorName).isValid == false){
		myColor = myDocument.colors.add({name:myColorName});
	}
	else{
		myColor = myDocument.colors.item(myColorName);
	}
	myColor.properties = {model:myColorModel, colorValue:myColorValue};
	return myColor;
}