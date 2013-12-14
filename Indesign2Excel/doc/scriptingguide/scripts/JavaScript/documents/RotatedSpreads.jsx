//RotatedSpreads.jsx
//An InDesign CS6 JavaScript
//
//Shows how to rotate spreads in a document.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myTextFrame;
	var myDocument = app.documents.add();
	myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
	myDocument.documentPreferences.pagesPerDocument = 6;
	var myMasterSpread = myDocument.masterSpreads.item(0);
	//Create a text frame with an automatic page number marker on each page in the master spread.
	for(var myCounter = 0; myCounter < myMasterSpread.pages.length; myCounter++){
		myTextFrame = myMasterSpread.pages.item(myCounter).textFrames.add({
			geometricBounds:myGetBounds(myDocument, myMasterSpread.pages.item(myCounter)), 
			contents:SpecialCharacters.autoPageNumber
		});
		myTextFrame.textFramePreferences.verticalJustification = VerticalJustification.centerAlign;
		myTextFrame.texts.item(0).pointSize = 72;
		myTextFrame.texts.item(0).justification = Justification.centerAlign;
	}
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	//Spread.transform (in: CoordinateSpaces , from:any, withMatrix:any, replacingCurrent:any, consideringRulerUnits: Boolean ) 
	//<fragment>
	//Given a document containing at least two spreads, rotate the second spread 90 degrees counterclockwise. 
	var myTransformationMatrix = app.transformationMatrices.add(undefined, undefined, undefined, 90);
	myDocument.spreads.item(1).transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	//</fragment>
}
function myTeardown(){
}
function myGetBounds(myDocument, myPage){
	var myPageWidth = myDocument.documentPreferences.pageWidth;
	var myPageHeight = myDocument.documentPreferences.pageHeight
	if(myPage.side == PageSideOptions.leftHand){
		var myX2 = myPage.marginPreferences.left;
		var myX1 = myPage.marginPreferences.right;
	}
	else{
		var myX1 = myPage.marginPreferences.left;
		var myX2 = myPage.marginPreferences.right;
	}
	var myY1 = myPage.marginPreferences.top;
	var myX2 = myPageWidth - myX2;
	var myY2 = myPageHeight - myPage.marginPreferences.bottom;
	return [myY1, myX1, myY2, myX2];
}
