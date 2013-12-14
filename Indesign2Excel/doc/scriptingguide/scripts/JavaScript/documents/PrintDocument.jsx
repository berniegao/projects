//PrintDocument.jsx
//An InDesign CS6 JavaScript
//
//Prints the active document.
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
    //Prints the active document.
    //<fragment>
    var myDocument = app.documents.add();
    with(myDocument.printPreferences)
    {
        //The document is blank. So have to set the print 
        //preferences.
        printBlankPages=true;
     }
    //The print() method has two optional parameters:
    //printDialog -- if false, do not display the Print dialog box.
    //using -- if specified, use a named printer preset.
    //The following line prints the document using the default
    //settings without displaying the Print dialog box.
    myDocument.print(false);
    //</fragment>
}
//</snippet>
//<teardown>
function myTeardown(){
}
//</teardown>