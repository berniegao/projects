//Guides.jsx
//An InDesign CS6 JavaScript
//
//Creates a series of example guides.

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
    //Creates a series of example guides.
    var myDocument = app.documents.item(0);
    //<fragment>
    var myPageWidth = myDocument.documentPreferences.pageWidth;
    var myPageHeight = myDocument.documentPreferences.pageHeight;
    with(myDocument.pages.item(0)){
    	//Place guides at the margins of the page.
    	guides.add(undefined, {orientation:HorizontalOrVertical.vertical,
                               location:marginPreferences.left});
    	guides.add(undefined, {orientation:HorizontalOrVertical.vertical,
                               location:(myPageWidth - marginPreferences.right)});
    	guides.add(undefined, {orientation:HorizontalOrVertical.horizontal,
                               location:marginPreferences.top});
    	guides.add(undefined, {orientation:HorizontalOrVertical.horizontal,
                               location:(myPageHeight - marginPreferences.bottom)});
    	//Place a guide at the vertical center of the page.
    	guides.add(undefined, {orientation:HorizontalOrVertical.vertical,
                               location:(myPageWidth/2)});
    	//Place a guide at the horizontal center of the page.
    	guides.add(undefined, {orientation:HorizontalOrVertical.horizontal,
                               location:(myPageHeight/2)});
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


