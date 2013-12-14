//AddPreflightRules.jsx
//An InDesign CS6 JavaScript
//
//Shows how to add rules to an InDesign preflight profile.

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

	//<fragment>	
	//Add a rule that requires a specific page size and orientation 
	//(portrait or landscape).
	const RULE_NAME = "ADBE_PageSizeOrientation";
	var myRule = myProfile.preflightProfileRules.add(RULE_NAME);
	//</fragment>

	//<fragment>
	//Requires the page size to be 8.5in x 11in (Letter Size)
	//enters a value for tolerance
	myRule.ruleDataObjects.add("tolerance", RuleDataType.realDataType, 0.01);
	//Sets the width  to the point equivalent of 8.5 inches
	myRule.ruleDataObjects.add("width", RuleDataType.realDataType, 612);
	//Sets the width  to the point equivalent of 11 inches
	myRule.ruleDataObjects.add("height", RuleDataType.realDataType, 792);
	//true = ignore orientation is checked
	myRule.ruleDataObjects.add("ignore_orientation", RuleDataType.booleanDataType, true);
	//</fragment>

	//<fragment>
	//set the rule to return an error
	myRule.flag = PreflightRuleFlag.returnAsError; 
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
