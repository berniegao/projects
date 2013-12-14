//MakeDocument.jsx
//An InDesign CS6 JavaScript
//
//Creates a new document using the specified document preset.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    //Creates a document preset if it does not already exist.
    var myDocumentPreset;
    //If the document preset "myDocumentPreset" does not already exist, create it.	
    myDocumentPreset = app.documentPresets.item("myDocumentPreset");
    try {
    	var myPresetName = myDocumentPreset.name;
    }
    catch (myError){
    	myDocumentPreset = app.documentPresets.add({name:"myDocumentPreset"});
    }
    //Fill in the properties of the document preset.
    with(myDocumentPreset){
    	pageHeight = "9i";
    	pageWidth = "7i";
    	left = "4p";
    	right = "6p";
    	top = "4p";
    	bottom = "9p";
    	columnCount = 1;
    	documentBleedBottom = "3p";
    	documentBleedTop = "3p";
    	documentBleedLeft = "3p";
    	documentBleedRight = "3p";
    	facingPages = true;
    	pageOrientation = PageOrientation.portrait;
    	pagesPerDocument = 1;
    	slugBottomOffset = "18p";
    	slugTopOffset = "3p";
    	slugInsideOrLeftOffset = "3p";
    	slugRightOrOutsideOffset = "3p";
    }
}
//</setup>

//<snippet>
function mySnippet(){
    //<fragment>
    //Creates a new document using the specified document preset.
    //Replace "myDocumentPreset" in the following line with the name
    //of the document preset you want to use.
    var myDocumentPreset = app.documentPresets.item("myDocumentPreset");
    var myDocument = app.documents.add(true, myDocumentPreset);
    //</fragment>
}
//</snippet>

function myOriginalSnippet(){
    //<fragment>
    //Creates a new document using the specified document preset.
    //Replace "myDocumentPreset" in the following line with the name
    //of the document preset you want to use.
    var myDocument = app.documents.add(true, app.documentPresets.item("myDocumentPreset"));
    //</fragment>
}

//<teardown>
function myTeardown(){
}
//</teardown>

