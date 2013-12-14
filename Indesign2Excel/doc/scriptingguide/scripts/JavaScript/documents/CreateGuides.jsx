//CreateGuides.jsx
//An InDesign CS6 JavaScript
//
//Add a series of guides using the createGuides command.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    app.documents.add();
}
//</setup>

//<snippet>
function mySnippet(){
    //Add a series of guides using the createGuides command.
    var myDocument = app.documents.item(0);
    //<fragment>
    var myLayer = myDocument.layers.item(0);
    with (myDocument.spreads.item(0)){
    	//Parameters (all optional): row count, column count, row gutter, 
    	//column gutter,guide color, fit margins, remove existing, layer.
    	//Note that the createGuides method does not take an RGB array 
    	//for the guide color parameter.
    	createGuides(4, 4, "1p", "1p", UIColors.gray, true, true, myLayer);
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


