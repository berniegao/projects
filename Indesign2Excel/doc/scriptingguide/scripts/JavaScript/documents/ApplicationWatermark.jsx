//ApplicationWatermark.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set the properties of the watermark feature.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
//<setup>
function mySetup() {
}
//</setup>
//<snippet>
function mySnippet(){
	//<fragment>
	app.watermarkPreferences.watermarkVisibility = true;
	app.watermarkPreferences.watermarkDoPrint = true;
	app.watermarkPreferences.watermarkDrawInBack = true;
	app.watermarkPreferences.watermarkText = "Confidential";
	app.watermarkPreferences.watermarkFontFamily = "Arial";
	app.watermarkPreferences.watermarkFontStyle = "Bold";
	app.watermarkPreferences.watermarkFontPointSize = 72;
	app.watermarkPreferences.watermarkFontColor = UIColors.red; 
	app.watermarkPreferences.watermarkOpacity = 60;
	app.watermarkPreferences.watermarkRotation = -45;
	app.watermarkPreferences.watermarkHorizontalPosition = WatermarkHorizontalPositionEnum.watermarkHCenter;
	app.watermarkPreferences.watermarkHorizontalOffset = 0;
	app.watermarkPreferences.watermarkVerticalPosition = WatermarkVerticalPositionEnum.watermarkVCenter;
	app.watermarkPreferences.watermarkVerticalOffset = 0;
	//</fragment>
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points; 
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points; 
	myDocument.documentPreferences.pageHeight = 792; 
	myDocument.documentPreferences.pageWidth = 612; 
	var myTextFrame = myDocument.pages.item(0).textFrames.add({geometricBounds:[36, 36, 756, 576], contents:TextFrameContents.PLACEHOLDER_TEXT});
}
//</snippet>
//<teardown>
function myTeardown(){
}
//</teardown>








