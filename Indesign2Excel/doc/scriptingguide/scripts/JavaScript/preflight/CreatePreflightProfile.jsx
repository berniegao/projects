//CreatePreflightProfile.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create an InDesign preflight profile.

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
	//Add a new preflight profile.
	var myProfile = app.preflightProfiles.add();
	if (myProfile == null)
	{
		alert("The profile did not add successfully.");
	}
	else
	{
		alert("Preflight profile " + myProfile.name + " is added.")
	}
	//Rename the profile.
	var oldName = myProfile.name
	myProfile.name = "Test";
	myProfile.description = "Test description";
	alert("Preflight profile " + oldName + " is renamed to " + myProfile.name + ".")
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
