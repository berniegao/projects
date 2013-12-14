//DocumentPresetByExample.jsx
//An InDesign CS6 JavaScript
//
//Creates a document preset based on the current document settings.
//Assumes you have a document open.

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
    //Creates a document preset based on the current document settings.
    //Assumes you have a document open.
    if(app.documents.length > 0){
    	var myDocument = app.documents.item(0);
        //<fragment>
    	//If the document preset "myDocumentPresetByExample" does not already exist,
        //create it.	
    	var myDocumentPreset = app.documentPresets.item("myDocumentPresetByExample");
    	try {
    		var myPresetName = myDocumentPreset.name;
    	}
    	catch (myError){
    		myDocumentPreset
                = app.documentPresets.add({name:"myDocumentPresetByExample"});
    	}
    	//Set the application default measurement units to match the document
    	//measurement units.
    	app.viewPreferences.horizontalMeasurementUnits
            = myDocument.viewPreferences.horizontalMeasurementUnits;
    	app.viewPreferences.verticalMeasurementUnits
            = myDocument.viewPreferences.verticalMeasurementUnits;
    	//Fill in the properties of the document preset with the corresponding
    	//properties of the active document.
    	with(myDocumentPreset){
    		//Note that the following gets the page margins from the margin
            //preferences of the document; to get the margin preferences from the
            //active page, replace "app.activeDocument" with
            //"app.activeWindow.activePage" in the following line (assuming the
            //active window is a layout window).
    		var myMarginPreferences = app.activeDocument.marginPreferences;
    		left = myMarginPreferences.left;
    		right = myMarginPreferences.right;
    		top = myMarginPreferences.top;
    		bottom = myMarginPreferences.bottom;
    		columnCount = myMarginPreferences.columnCount;
    		columnGutter = myMarginPreferences.columnGutter;
    		documentBleedBottom
                = myDocument.documentPreferences.documentBleedBottomOffset;
    		documentBleedTop
                = myDocument.documentPreferences.documentBleedTopOffset;
    		documentBleedLeft
                = myDocument.documentPreferences.documentBleedInsideOrLeftOffset;
    		documentBleedRight
                = myDocument.documentPreferences.documentBleedOutsideOrRightOffset;
    		facingPages = myDocument.documentPreferences.facingPages;
    		pageHeight = myDocument.documentPreferences.pageHeight;
    		pageWidth = myDocument.documentPreferences.pageWidth;
    		pageOrientation = myDocument.documentPreferences.pageOrientation;
    		pagesPerDocument = myDocument.documentPreferences.pagesPerDocument;
    		slugBottomOffset = myDocument.documentPreferences.slugBottomOffset;
    		slugTopOffset = myDocument.documentPreferences.slugTopOffset;
    		slugInsideOrLeftOffset
                = myDocument.documentPreferences.slugInsideOrLeftOffset;
    		slugRightOrOutsideOffset
                = myDocument.documentPreferences.slugRightOrOutsideOffset;
    	}
        //</fragment>
    }
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>