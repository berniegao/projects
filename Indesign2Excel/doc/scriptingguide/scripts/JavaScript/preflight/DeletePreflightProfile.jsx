//DeletePreflightProfile.jsx
//An InDesign CS6 JavaScript
//
//Shows how to delete an InDesign preflight profile.

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
	var profileName = "Test"
	removeProfile(profileName)
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>

//<fragment>
function removeProfile(name)
{
	//Lookup the existing preflight profile by name
	var oldProfile = app.preflightProfiles.itemByName(name);
	//If a profile with that name was found
	if (oldProfile != null)
	{
		oldProfile.remove();
	}
}
//</fragment>
