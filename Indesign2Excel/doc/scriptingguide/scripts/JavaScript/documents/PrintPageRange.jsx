//PrintPageRange.jsx
//An InDesign CS6 JavaScript
//
//Prints a page range from the active document.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    myDocument = app.documents.add();
    with(myDocument.documentPreferences){
    	pagesPerDocument = 10;
    	facingPages = false;
    	var myPageWidth = pageWidth;
    	var myPageHeight = pageHeight;
    }
    //If the master spread contains more than a single
    //page, delete the additional pages.
    var myMasterSpread = myDocument.masterSpreads.item(0);
    for(var myCounter = 0; myCounter < myMasterSpread.pages.length; myCounter ++){
    	myMasterSpread.pages.item(0).remove();
    }
    var myTextFrame = myMasterSpread.pages.item(0).textFrames.add({geometricBounds:[0, 0, myPageHeight, myPageWidth], contents:SpecialCharacters.autoPageNumber});
    myTextFrame.textFramePreferences.verticalJustification = VerticalJustification.centerAlign;
    myTextFrame.texts.item(0).pointSize = 72;
    myTextFrame.texts.item(0).justification = Justification.centerAlign;
}
//</setup>

//<snippet>
function mySnippet(){
    //Prints a page range from the active document.
    var myDocument = app.documents.item(0);
    //<fragment>
    //The page range can be either PageRange.ALL_PAGES or a page range string.
    //A page number entered in the page range must correspond to a page
    //name in the document (i.e., not the page index). If the page name is
    //not found, InDesign will display an error message.
    myDocument.printPreferences.pageRange = "1-3,10";
    myDocument.print(false);
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
