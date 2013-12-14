//PlaceSound.jsx
//An InDesign CS6 JavaScript
//
//Shows how to import a sound file.
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
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	//<fragment>
	//Given a page "myPage"... 
	//Import a sound file (you'll have to provide a valid file path on your system);
	var mySound = myPage.place(File("/c/sound.mp3"), [72, 72])[0];
	//Set sound properties.
	mySound.embedInPDF = true;
	mySound.doNotPrintPoster = true;
	mySound.soundLoop = true;
	mySound.stopOnPageTurn = true;
	//Add a preview image. You'll have to provide a valid path on your system.
	mySound.posterFile = File("/c/sound poster.jpg");
	//</fragment>
}
function myTeardown(){
}