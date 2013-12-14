//MakeTextFrame.jsx
//An InDesign CS6 JavaScript
//
//Creates a text frame in an example document.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
    //Set the measurement units to points.
    myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
    myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.add();
    //Set the bounds of the text frame.
    myTextFrame.geometricBounds = [72, 72, 288, 288];
    //Enter text in the text frame.
    myTextFrame.contents = "This is some example text."
    //Note that you could also use a properties record to
    //create the frame and set its bounds and contents in one line:
    //var myTextFrame = myDocument.pages.item(0).textFrames.add({geometricBounds:[72, 72, 288, 288], contents:"This is some example text."});
    //</fragment>
}
function myTeardown(){
}