//PlaceMovie.jsx
//An InDesign CS6 JavaScript
//
//Shows how to import a movie file.
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
	var myFrame = myPage.rectangles.add({geometricBounds:[72, 72, 288, 288]});
	//Import a movie file (you'll have to provide a valid file path on your system);
	var myMovie = myFrame.place(File("/c/movie.avi"))[0];
	//Set movie properties.
	myMovie.embedInPDF = true;
	myMovie.showControls = true;
	//Add a preview image. You'll have to provide a valid path on your system.
	myMovie.posterFile = File("/c/movie poster.jpg");
	//</fragment>
}
function myTeardown(){
}