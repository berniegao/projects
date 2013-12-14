//DoScriptScriptArgs.jsx
//An InDesign CS6 JavaScript
//
//Shows how to return values from a script called using
//the doScript method.

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
    var nameA = "ScriptArgumentA";
    var nameB = "ScriptArgumentB";
    var nAc = nameA + ": ";
    var nBc = nameB + ": ";
    //Create a string to be run as a JavaScript.
    var p1 = "app.scriptArgs.setValue(\"" + nameA + "\", ";
    var p2 = "\"This is the first script argument value.\");\r";
    var p3 = "app.scriptArgs.setValue(\"" + nameB + "\", ";
    var p4 = "\"This is the second script argument value.\")";
    var p5, p6; //Used later.
    var myJavaScript = p1 + p2 + p3 + p4;
    var myScriptArgumentA = app.scriptArgs.getValue(nameA);
    var myScriptArgumentB = app.scriptArgs.getValue(nameB);
    alert(nameA + ": " + myScriptArgumentA + "\r" + nameB + ": " + myScriptArgumentB);
    if(File.fs == "Windows") {
        //Create a string to be run as a VBScript.
        p1 = "Set myInDesign = CreateObject(\"InDesign.Application.CS6\")\r";
        p2 = "myInDesign.ScriptArgs.SetValue \"" + nameA + "\", ";
        p3 = "\"This is the first script argument value.\"\r";
        p4 = "myInDesign.ScriptArgs.SetValue \"" + nameB + "\", ";
        p5 = "\"This is the second script argument value.\"";
        var myVBScript = p1 + p2 + p3 + p4 + p5; 
        app.doScript(myVBScript, ScriptLanguage.visualBasic);
    } else {
        //Create a string to be run as a AppleScript.
        p1 = "tell application \"Adobe InDesign CS6\"\r";
        p2 = "tell script args" +"\r";
        p3 = "set value name\"" + nameA +"\" value ";
        p4 = "\"This is the firest AppleScript script argument value.\"" +"\r";
        p5 = "set value name\"" + nameB +"\" value ";
        p6 = "\"This is the second AppleScript script argument value.\"" +"\r";
        p7 = "end tell" + "\r"
        p8 = "end tell" + "\r"
        var myAppleScript = p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8;
        app.doScript(myAppleScript, ScriptLanguage.applescriptLanguage);
    }
    var myScriptArgumentA = app.scriptArgs.getValue(nameA);
    var myScriptArgumentB = app.scriptArgs.getValue(nameB);
    alert(nAc + myScriptArgumentA + nBc + myScriptArgumentB);
    //</fragment>
}
//<snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
