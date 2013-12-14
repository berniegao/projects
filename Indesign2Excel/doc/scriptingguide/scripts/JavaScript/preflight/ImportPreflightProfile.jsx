//ImportPreflightProfile.jsx
//An InDesign CS6 JavaScript
//
//Shows how to import an InDesign preflight profile.

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
	var myProfile = app.loadPreflightProfile(File("/c/Test.idpp"));
	if (myProfile == null)
	{
		alert("The profile did not load successfully");
	}
	else
	{
		alert("Preflight profile " + myProfile.name + " is loaded.")
	}
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
