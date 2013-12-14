//ViewPreferences.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set the measurement units of a document.
//Assumes that you hava a document open.

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
    //Shows how to set the measurement units of a document.
    //Assumes that you hava a document open.
    var myDocument = app.documents.item(0);
    //<fragment>
    with(myDocument.viewPreferences){
    	//Measurement unit choices are:
    	//* MeasurementUnits.picas
    	//* MeasurementUnits.points
    	//* MeasurementUnits.inches
    	//* MeasurementUnits.inchesDecimal
    	//* MeasurementUnits.millimeters
    	//* MeasurementUnits.centimeters
    	//* MeasurementUnits.ciceros
    	//* MeasurementUnits.agates
    	//* MeasurementUnits.custom
    	//Set horizontal and vertical measurement units to points.
    	horizontalMeasurementUnits = MeasurementUnits.points;
    	verticalMeasurementUnits = MeasurementUnits.points;
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


