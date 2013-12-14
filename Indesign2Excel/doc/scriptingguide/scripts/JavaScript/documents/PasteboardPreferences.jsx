//PasteboardPreferences.jsx
//An InDesign CS6 JavaScript
//
//Change the size and preview color of the pasteboard.

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
    //Change the size and preview color of the pasteboard.
    myDocument = app.documents.item(0);
    //<fragment>
    with(myDocument.pasteboardPreferences){
    	//You can use either a number or a measurement string 
    	//to set the minimum horizontal and vertical pasteboard margins
		pasteboardMargins = ["12p", "15p"];
        //You can set the preview background color (which you'll only see
        //in Preview mode) to any of the predefined UIColor constants...
    	previewBackgroundColor = UIColors.gray;
    	//...or you can specify an array of RGB values 
    	//   (with values from 0 to 255)
    	previewBackgroundColor = [192, 192, 192];	
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


