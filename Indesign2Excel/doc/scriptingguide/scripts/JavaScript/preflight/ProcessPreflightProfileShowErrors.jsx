//ProcessPreflightProfileShowErrors.jsx
//An InDesign CS6 JavaScript
//
//Shows how to process a preflight profile and show errors in a message box.

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
	// Assume there is a document.
	var myDoc = app.documents.item(0);
	// Assume the Test preflight profile exists.
	var myProfile = app.preflightProfiles.itemByName("Test");

	//Process the myDoc with the rule
	var myProcess = app.preflightProcesses.add(myDoc, myProfile);
	myProcess.waitForProcess();
	var myResults = myProcess.processResults;

	//<fragment>
	//If Errors were found
	if (myResults != "None")
	{
		// array containing detailed results
		var errors = myProcess.aggregatedResults
		// Show the errors in a message box.
		var str = "Document: " + errors[0] + ", Profile: " + errors[1] + ", Results: ["
		var errorResults = errors[2]
		for (var i = 0; i < errorResults.length; i++)
		{
			if (i > 1)
			{
				str += ", "
			}
			str += errorResults[i][1]
		}
		str = str + "]"
		alert(str)
	}
	//</fragment>

	//Cleanup
	myProcess.remove();
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
