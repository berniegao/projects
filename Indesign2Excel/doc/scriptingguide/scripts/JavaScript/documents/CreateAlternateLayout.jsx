//CreateAlternateLayout.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create alternate layout.
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

while (app.documents.length > 0)
		app.documents[0].close(SaveOptions.no);
 //<fragment>        
myDoc = app.documents.add({
                                documentPreferences: 
                                {
                                    facingPages:false, 
                                    pagesPerDocument:1, 
                                    pageWidth:1024, 
                                    pageHeight:768
                                 }
                        });
//Reposition and resize objects on the page as it resizes.
myDoc.pages[0].layoutRule = LayoutRuleOptions.OBJECT_BASED ;

 with (myDoc)
 {
    var myItem = pages[0].rectangles.add({
                                        geometricBounds:[50,50,100,100]
                                        });  
    //create alternate layout 
    myDoc.createAlternateLayout(myDoc.spreads, 
                                "new layout", 
                                myDoc.documentPreferences.pageHeight, 
                                myDoc.documentPreferences.pageWidth, 
                                true, 
                                true, 
                                LayoutRuleOptions.PRESERVE_EXISTING);
  }
//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>



 
 