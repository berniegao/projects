//CallProgressBar.jsx
//An InDesign CS6 JavaScript
//
//Displays a ScriptUI progress bar created by the
//ProgressBar.jsx example script.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myFileName = myFindFile("/ProgressBar.jsx", "Select the script file ProgressBar.jsx");
	app.doScript(File(myFileName));
}
function mySnippet(){
    //<fragment>
    #targetengine "session"
    myCreateProgressPanel(100, 400);
    myProgressPanel.show();
    for(var myCounter = 0; myCounter < 40; myCounter ++){
    	//Scale the value change to the maximum value of the progress bar.
    	myProgressPanel.myProgressBar.value = myCounter/myIncrement;
    	app.documents.item(0).pages.add();
    	if(myCounter == 39){
    		myProgressPanel.myProgressBar.value = 0;
    		myProgressPanel.hide();
    	}
    }
    //</fragment>
}
function myTeardown(){
}
function myFindFile(myFilePath, myPrompt){
	var myScriptFile = myGetScriptPath();
	var myScriptFile = File(myScriptFile);
	var myScriptFolder = myScriptFile.path;
	myFilePath = myScriptFolder + myFilePath;
	if(File(myFilePath).exists == false){
		//Display a dialog.
		myFilePath = File.openDialog(myPrompt);
	}
	return myFilePath;
}
function myGetScriptPath(){
	try{
		myFile = app.activeScript;
	}
	catch(myError){
		myFile = myError.fileName;
	}
	return myFile;
}