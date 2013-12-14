Rem AddPreflightRules.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to add rules to an InDesign preflight profile.

main

Function main()
	Set myInDesign = CreateObject("InDesignServer.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function

Function mySetup(myInDesign)
End Function

Function mySnippet(myInDesign)
	Set myProfile = myInDesign.PreflightProfiles.Add()
	Rem MsgBox("Preflight profile " & myProfile.Name & " is created.")

	Rem <fragment>
	Rem Add a rule that requires a specific page size and orientation 
	Rem (portrait or landscape).
	const RULE_NAME = "ADBE_PageSizeOrientation"
	Set myRule = myProfile.PreflightProfileRules.Add(RULE_NAME)
	Rem </fragment>

	Rem <fragment>
	Rem Requires the page size to be 8.5in x 11in (Letter Size)
	Rem enters a value for tolerance
	myRule.RuleDataObjects.Add "tolerance", idRuleDataType.idRealDataType, 0.01
	Rem Sets the width  to the point equivalent of 8.5 inches
	myRule.RuleDataObjects.Add "width", idRuleDataType.idRealDataType, 612
	Rem Sets the width  to the point equivalent of 11 inches
	myRule.RuleDataObjects.Add "height", idRuleDataType.idRealDataType, 792
	Rem true = ignore orientation is checked
	myRule.RuleDataObjects.Add "ignore_orientation", idRuleDataType.idBooleanDataType, true
	Rem </fragment>

	Rem <fragment>
	Rem set the rule to return an error
	myRule.Flag = idPreflightRuleFlag.idReturnAsError
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function
