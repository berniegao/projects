//MetadataExample.jsx
//An InDesign CS6 JavaScript
//Adds metadata to an example document.

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
    //Adds metadata to an example document.
    var myDocument = app.documents.item(0);
    //<fragment>
    with (myDocument.metadataPreferences){
    	author = "Adobe";
    	copyrightInfoURL = "http://www.adobe.com";
    	copyrightNotice = "This document is copyrighted.";
    	copyrightStatus = CopyrightStatus.yes;
    	description = "Example of xmp metadata scripting in Adobe InDesign CS6";
    	documentTitle = "XMP Example";
    	jobName = "XMP_Example_2008";
    	keywords = ["animal", "mineral", "vegetable"];
    	//The metadata preferences object also includes the read-only
    	//creator, format, creationDate, modificationDate, and serverURL 
    	//properties that are automatically entered and maintained by InDesign.
    	//Create a custom XMP container, "email"
        var myString = "http://ns.adobe.com/xap/1.0/";
    	var myNewContainer = createContainerItem(myString, "email");
    	setProperty(myString, "email/*[1]", "someone@adobe.com");
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>