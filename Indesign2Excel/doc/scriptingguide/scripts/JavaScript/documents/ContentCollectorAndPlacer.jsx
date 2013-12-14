//ContentCollectorAndPlacer.jsx
//An InDesign CS6 JavaScript
//
//Use content placer to load page items in one document and place them to another document
main();

function main(){
	mySetup();
	mySnippet();
	myTeardown();
}

//<setup>
function mySetup(){
    var myDocument = app.documents.add();
    var myDocument1 = app.documents.add();
    with(myDocument.documentPreferences){
    	pageHeight = "600pt";
    	pageWidth = "800pt";
    	pageOrientation = PageOrientation.portrait;
    	pagesPerDocument = 1;
    }
    with(myDocument1.documentPreferences){
    	pageHeight = "600pt";
    	pageWidth = "800pt";
    	pageOrientation = PageOrientation.portrait;
    	pagesPerDocument = 1;
    }
}
//</setup>

//<snippet>
function mySnippet(){
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
    var myDocument1 = app.documents.item(1);
    var myPage1 = myDocument1.pages.item(0);
    
    //Create a textframe
    var myTextFrame = myPage.textFrames.add
    (
        {geometricBounds:[15, 15, 25, 50], contents:"I am a text frame "}
    );     
    //Create a checkbox
    var myCheckBox = myPage.checkBoxes.add
    (
        {geometricBounds:[5, 5, 10, 10], name:"I am a check box "}
    );
    //Create a button
    var myButton = myPage.buttons.add
    (
        {geometricBounds:[45, 15, 35, 35], name:"I am a button"}
    );
    //Create a rectangle frame
    var myRectangle = myPage.rectangles.add
    (
        {geometricBounds:[45, 75, 35, 45], name:"I am a rectangle"}
    );
    //Create an oval frame
    var myOval = myPage.ovals.add
    (
        {geometricBounds:[75 , 15, 50, 35], name:"I am an oval"}
    );
    //Create a polygon frame
    var myPolygon = myPage.polygons.add
    ( 
        {name:"I am a polygon"}
    );
    myPolygon.paths.item(0).entirePath = [[12, 12], [22, 22], [32, 12]];

    //Get content placer
    var contentPlacer = app.contentPlacer;
    
    //Need to save the document before invoking Page.contentPlace
    myDocument.save(File(Folder.desktop + "/ContentCollectorAndPlacer.indd"), true);
    
    //<fragment>
    //Invoke Page.contentPlace with default parameters
    myPage1.contentPlace(myPage.textFrames);  
    //</fragment>
    
    //<fragment>
    //Invoke Page.contentPlace with full parameters
    myPage1.contentPlace(myPage.checkBoxes,                                 //One or more page items to place or load
                                     true,                                  //Whether to link pageItems in content placer (Optional)
                                     true,                                  //Whether to link stories in content placer (Optional)
                                     true,                                  //Whether to map styles in content placer (Optional)
                                     [0, 0, 40, 40],                        //The point at which to place (Optional)
                                     myDocument1.activeLayer,               //The layer on which to place (Optional)
                                     true);                                 //Whether to display the link options dialog (Optional)
    //</fragment>
    
    //<fragment>
    //Invoke load with default paramenters, then invoke Page.contentPlace with default parameters
    contentPlacer.load(myPage.ovals);
    
    //Need to save the document before invoking Page.contentPlace
    myDocument.save(File(Folder.desktop + "/ContentCollectorAndPlacer.indd"), true);
    
    //Invoke contentPlace with default parameters
    myPage1.contentPlace(myPage.ovals);  
    //</fragment>
    
    //<fragment>
    //Invoke load with default paramenters, then invoke Page.contentPlace with full parameters
    contentPlacer.load(myPage.buttons);
    
    //Need to save the document before invoking Page.contentPlace
    myDocument.save(File(Folder.desktop + "/ContentCollectorAndPlacer.indd"), true);
    
    //Invoke contentPlace with full parameters
    myPage1.contentPlace(myPage.buttons, true, true, true, [0, 0, 40, 40], myDocument1.activeLayer, true);  
    //</fragment>
    
    //<fragment>
    //Invoke load with full parameters,  then invoke Page.contentPlace with default parameters
    contentPlacer.load(myPage.polygons, true, true, true, true);
    
    //Need to save the document before invoking Page.contentPlace
    myDocument.save(File(Folder.desktop + "/ContentCollectorAndPlacer.indd"), true);
    
    //Invoke contentPlace with default parameters
    myPage1.contentPlace(myPage.polygons);
    //</fragment>
    
    //<fragment>
    //Invoke load with full parameters,  then invoke Page.contentPlace with full parameters
    contentPlacer.load(myPage.rectangles, true, true, true, true);
    
    //Need to save the document before invoking Page.contentPlace
    myDocument.save(File(Folder.desktop + "/ContentCollectorAndPlacer.indd"), true);
    
    //Invoke contentPlace with full parameters
    myPage1.contentPlace(myPage.rectangles, true, true, true, [0, 0, 40, 40], myDocument1.activeLayer, true);
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>