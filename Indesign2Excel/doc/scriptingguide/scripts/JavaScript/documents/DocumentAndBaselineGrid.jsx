//DocumentAndBaselineGrids.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set preferences for the 
//document grid and baseline grid.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

function mySetup(){
    app.documents.add();
}

function mySnippet(){
    //Access the active document.
    var myDocument = app.activeDocument;
    //<fragment>
    //Set the document measurement units to points.
    myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
    myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
    //Set up grid preferences.
    with(myDocument.gridPreferences){
    	baselineStart = 56;
    	baselineDivision = 14;
    	baselineShown = true;
    	horizontalGridlineDivision = 14;
    	horizontalGridSubdivision = 5
    	verticalGridlineDivision = 14;
    	verticalGridSubdivision = 5
    	documentGridShown = true;
    }
    //</fragment>
}

function myTeardown(){
}

