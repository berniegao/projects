//ListPreflightProfiles.jsx
//An InDesign CS6 JavaScript
//
//Shows how to list all InDesign preflight profiles.

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
	var profiles = app.preflightProfiles;
	var profileCount = profiles.length;
	var str = "Preflight profiles: ";
	for (var i = 0; i < profileCount; i++)
	{
		if (i != 0)
		{
			str += ", ";
		}
		str += profiles.item(i).name;
	}
	alert(str);
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
