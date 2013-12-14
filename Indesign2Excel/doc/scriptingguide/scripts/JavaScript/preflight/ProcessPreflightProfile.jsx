//ProcessPreflightProfile.jsx
//An InDesign CS6 JavaScript
//
//Shows how to process an InDesign preflight profile.

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
	// Assume there is a document.
	var myDoc = app.documents.item(0);
	// Assume the Test preflight profile exists.
	var myProfile = app.preflightProfiles.itemByName("Test");
	//Process the myDoc with the rule
	var myProcess = app.preflightProcesses.add(myDoc, myProfile);
	myProcess.waitForProcess();
	var myResults = myProcess.processResults;
	//If errors were found
	if (myResults != "None")
	{
		//Export the file to PDF. The "true" value selects to open the file after export.
		myProcess.saveReport(File("/c/PreflightResults.pdf"), true);
	}
	//Cleanup
	myProcess.remove();
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
