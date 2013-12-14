//GuideAndGridPreferences.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set preferences for guides and grids.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    var myDocument = app.documents.add();
    with (myDocument.viewPreferences){
    	horizontalMeasurementUnits = MeasurementUnits.inches;
    	verticalMeasurementUnits = MeasurementUnits.inches;
    }
}
//</setup>

//<snippet>
function mySnippet(){
    //Shows how to set preferences for guides and grids.
    var myDocument = app.documents.item(0);
    //<fragment>
    with(myDocument.guidePreferences){
    	guidesInBack = true;
    	guidesLocked = false;
    	guidesShown = true;
    	guidesSnapTo = true;
        rulerGuidesColor = UIColors.cuteTeal; //By name ...
        rulerGuidesColor = [0, 198, 192];     //... or RGB values.
        rulerGuidesViewThreashold = 50; //Magnification (as a percentage) less
                                        //then which ruler guides do not appear
                                        //(Range: 5 to 4000)
    }
    var myBaselineStart;
    with (BaselineGridRelativeOption) {
        myBaselineStart = TOP_OF_PAGE_OF_BASELINE_GRID_RELATIVE_OPTION; // or
        myBaselineStart = TOP_OF_MARGIN_OF_BASELINE_GRID_RELATIVE_OPTION;
//                                                                                                      XXX Even with this set, JS puts first baseline 2 in. from top of page.
    }
    with(myDocument.gridPreferences){
        //Baseline Grid
        baselineStart = "2in";
        baselingeGridRelativeOption = myBaselineStart;
        baselineColor = UIColors.lightBlue; //By name ...
        baselineColor = [79, 153, 255];     //... or by RGB color.
        baselineDivision = "22pt";
        baselineGridShown = true;  //Objects will snap to the baseline grid only if
                                   //the grid is shown.
        baselineViewThreashold = 75;
        //Document Grid
        documentGridSnapTo = true; //If documentGridSnapTo is true, objects will
                                   //snap to the grid even if ...
        documentGridShown = false; //... documentGridShown is false.
        gridColor = UIColors.charcoal; //By name ...
        gridColor = [192, 192, 192];   //... or RGB values.
        gridInBack = true;
        //Set spacing of document grid based on current measurement units (inches).
        horizontalGridlineDivision = 1;
        horizontalGridSubdivision = 4;
        verticalGridlineDivision = 1;
        verticalGridSubdivision = 4;
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>