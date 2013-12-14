//XMLViewPreferences.jsxs
//An InDesign CS6 JavaScript.
//
//Sets Structure panel display options.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myXMLViewPreferences = myDocument.xmlViewPreferences;
    myXMLViewPreferences.showAttributes = true;
    myXMLViewPreferences.showStructure = true;
    myXMLViewPreferences.showTaggedFrames = true;
    myXMLViewPreferences.showTagMarkers = true;
    myXMLViewPreferences.showTextSnippets = true;
    //</fragment>
}
function myTeardown(){
}