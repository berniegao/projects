//ListPreflightRules.jsx
//An InDesign CS6 JavaScript
//
//Shows how to list all InDesign preflight rules in a profile.

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
	// Assume the [Basic] profile exists
	var myProfile = app.preflightProfiles.item(0);
	var myRules = myProfile.preflightProfileRules;
	var ruleCount = myRules.length;
	var str = "Preflight rules of " + myProfile.name + ": ";
	for (var i = 0; i < ruleCount; i++)
	{
		if (i > 0)
		{
			str += ", ";
		}
		str += myRules.item(i).name;
	}
	alert(str);
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
