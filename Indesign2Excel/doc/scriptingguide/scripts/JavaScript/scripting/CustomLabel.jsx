//CustomLabel.jsx
//An InDesign CS6 JavaScript
//
//Shows how to add and extract custom labels 
//from page items.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
}
//</setup>

//<snippet>
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.add();
    myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
    myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
    var myPage = myDocument.pages.item(0);
    var myRectangle = myPage.rectangles.add({geometricBounds:[72, 72, 144, 144]});
    //Insert a custom label using insertLabel. The first parameter is the
    //name of the label, the second is the text to add to the label.
    myRectangle.insertLabel("CustomLabel", "This is some text stored in a custom label.");
    //Extract the text from the label and display it in an alert.
    var myString = myRectangle.extractLabel("CustomLabel");
    alert("Custom label contained: " + myString);
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
