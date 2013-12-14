//ResetMeasurementUnits.jsx
//An InDesign CS6 JavaScript
//
//Shows how to change, then reset a document's measurement units.
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
    //Shows how to change, then reset a document's measurement units.
    //Assumes that you hava a document open.
    var myDocument = app.documents.item(0);
    //<fragment>
    with (myDocument.viewPreferences){
    	var myOldXUnits = horizontalMeasurementUnits;
    	var myOldYUnits = verticalMeasurementUnits;
    	horizontalMeasurementUnits = MeasurementUnits.points;
    	verticalMeasurementUnits = MeasurementUnits.points;
    }
    //At this point, you can perform any series of script actions 
    //that depend on the measurement units you've set. At the end of
    //the script, reset the measurement units to their original state.
    with (myDocument.viewPreferences){
    	try{
    		horizontalMeasurementUnits = myOldXUnits;
    		verticalMeasurementUnits = myOldYUnits;
    	}
    	catch(myError){
    		alert("Could not reset custom measurement units.");
    	}
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


