//BleedSlugGuideColors.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set the colors used to display the bleed and slug guides.
//Assumes that you have a document open.

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
    //Shows how to set the colors used to display the bleed and slug guides.
    //Assumes that you have a document open.
    var myDocument = app.documents.item(0);
    //<fragment>
    with(myDocument.pasteboardPreferences){
    	//Any of InDesign's guides can use the UIColors constants...
    	bleedGuideColor = UIColors.cuteTeal;
    	slugGuideColor = UIColors.charcoal;
    	//...or you can specify an array of RGB values (with values from 0 to 255)
    	bleedGuideColor = [0, 198, 192];
    	slugGuideColor = [192, 192, 192];
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
