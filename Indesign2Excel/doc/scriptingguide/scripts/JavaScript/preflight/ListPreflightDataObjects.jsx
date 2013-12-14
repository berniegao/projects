//ListPreflightDataObjects.jsx
//An InDesign CS6 JavaScript
//
//Shows how to list all preflight data object under a rule in a profile.

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
	// Assume the [Basic] profile exists.
	var myProfile = app.preflightProfiles.item(0);
	// rule ADBE_BlankPages
	var myRule = myProfile.preflightProfileRules.item(0);
	var dataObjects = myRule.ruleDataObjects;
	var dataObjectCount = dataObjects.length;
	var str = "Preflight rule data objects of " + myProfile.name + "." + myRule.name + ": ";
	for (var i = 0; i < dataObjectCount; i++)
	{
		if (i > 0)
		{
			str += "; ";
		}
		str += dataObjects.item(i).name + ", ";
		str += getDataObjectDataType(dataObjects.item(i).dataType) + ", ";
		str += dataObjects.item(i).dataValue;
	}
	alert(str);
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>

//<fragment>
function getDataObjectDataType(type)
{
	if (type == RuleDataType.BOOLEAN_DATA_TYPE)
	{
		return "Boolean";
	}
	else if (type == RuleDataType.INTEGER_DATA_TYPE)
	{
		return "Integer";
	}
	else if (type == RuleDataType.LIST_DATA_TYPE)
	{
		return "List";
	}
	else if (type == RuleDataType.OBJECT_DATA_TYPE)
	{
		return "Object";
	}
	else if (type == RuleDataType.REAL_DATA_TYPE)
	{
		return "Real";
	}
	else if (type == RuleDataType.SHORT_INTEGER_DATA_TYPE)
	{
		return "Short Integer";
	}
	else if (type == RuleDataType.STRING_DATA_TYPE)
	{
		return "String";
	}
	else
	{
		return type;
	}
}
//<fragment>