//PageTransitions.jsx
//An InDesign CS6 JavaScript
//
//Shows how to apply page transition options to a spread in an exported PDF or SWF document.
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
	//Given a document "myDocument" containing at least two spreads...
	for(var myCounter = 0; myCounter < myDocument.spreads.length; myCounter++){
		myDocument.spreads.item(myCounter).pageTransitionType = PageTransitionTypeOptions.pageTurnTransition;
		//This page transition option does not support the pageTransitionDirection or pageTransitionDuration
		//properties. If you chose PageTransitionTypeOptions.wipeTransition (for example), you would be 
		//able to set those options, as shown in the next two lines:
		//myDocument.spreads.item(myCounter).pageTransitionDirection = PageTransitionDirectionOptions.leftToRight;
		//myDocument.spreads.item(myCounter).pageTransitionDuration = PageTransitionDurationOptions.medium;
	}
	//Export the document to SWF, and you'll see the page transitions.
	//</fragment>
}
function myTeardown(){
}