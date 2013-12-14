//ConvertShape.jsx
//An InDesign CS6 JavaScript
//
//Shows how to use the subtract path method.
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
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);
	//<fragment>
	//Given a rectangle "myRectangle"...
	myRectangle.convertShape(ConvertShapeOptions.convertToRoundedRectangle);
	//</fragment>
}
function myTeardown(){
}