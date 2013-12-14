main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
//<setup>
function mySetup() {
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points; 
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points; 
	myDocument.documentPreferences.pageHeight = 792; 
	myDocument.documentPreferences.pageWidth = 612; 
	var myTextFrame = myDocument.pages.item(0).textFrames.add({geometricBounds:[36, 36, 756, 576], contents:TextFrameContents.PLACEHOLDER_TEXT});
}
//</setup>
//<snippet>
function mySnippet() {
	//<fragment>
	var myDocument = app.documents.item(0);
	myDocument.watermarkPreferences.watermarkVisibility = true;
	myDocument.watermarkPreferences.watermarkDoPrint = true;
	myDocument.watermarkPreferences.watermarkDrawInBack = true;
	myDocument.watermarkPreferences.watermarkText = "Confidential";
	myDocument.watermarkPreferences.watermarkFontFamily = "Arial";
	myDocument.watermarkPreferences.watermarkFontStyle = "Bold";
	myDocument.watermarkPreferences.watermarkFontPointSize = 72;
	myDocument.watermarkPreferences.watermarkFontColor = UIColors.blue; 
	myDocument.watermarkPreferences.watermarkOpacity = 60;
	myDocument.watermarkPreferences.watermarkRotation = -45;
	myDocument.watermarkPreferences.watermarkHorizontalPosition = WatermarkHorizontalPositionEnum.watermarkHCenter;
	myDocument.watermarkPreferences.watermarkHorizontalOffset = 0;
	myDocument.watermarkPreferences.watermarkVerticalPosition = WatermarkVerticalPositionEnum.watermarkVCenter;
	myDocument.watermarkPreferences.watermarkVerticalOffset = 0;
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown() {
}
//</teardown>
