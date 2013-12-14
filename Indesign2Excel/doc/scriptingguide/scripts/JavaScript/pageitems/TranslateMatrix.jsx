// TranslateMatrix.vbs
// An InDesign CS6 VBScript
//
// Shows how to use the translateMatrix method.
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
	var myPage = myDocument.pages.item(0);
	var myRectangle = myPage.rectangles.add();
	myRectangle.geometricBounds = [72, 72, 144, 144];
}
function mySnippet(){
	//<fragment>
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);
	var myTransformationMatrix = app.transformationMatrices.add();
	// translateMatrix takes two parameters: horizontallyBy and verticallyBy
	myTransformationMatrix = myTransformationMatrix.translateMatrix(72, 0);
	myRectangle.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTransformationMatrix);
	//</fragment>
}
function myTeardown(){
}