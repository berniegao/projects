//GetScriptPath.jsx
//An InDesign CS6 JavaScript
//
//Gets the path to the active script; can be run from
//the ExtendScript toolkit.

//<fragment>
function myGetScriptPath() {
    try{
        return app.activeScript;
    }
    catch(myError){
        return File(myError.fileName);
    }
}
//</fragment>

dummy();

function dummy(){
    alert("Not a stand-alone script. Exists to provide sample code for documentation.");
}

