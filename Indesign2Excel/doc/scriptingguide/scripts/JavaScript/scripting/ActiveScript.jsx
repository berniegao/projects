//ActiveScript.jsx
//An InDesign CS6 JavaScript
//
//Demonstrates the use of the activeScript property.

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
    //<fragment>
    var myScript = app.activeScript;
    alert("The current script is: " + myScript);
    var myParentFolder = File(myScript).parent;
    alert("The folder containing the active script is: " + myParentFolder);
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>

