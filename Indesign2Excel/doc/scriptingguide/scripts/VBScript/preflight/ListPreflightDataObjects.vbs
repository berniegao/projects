Rem ListPreflightDataObjects.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to list all InDesign preflight data objects under a rule in a profile.

main

Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function

Function mySetup(myInDesign)
End Function

Function mySnippet(myInDesign)
	Rem <fragment>
	Rem Assume the [Basic] profile exists
	Set myProfile = myInDesign.PreflightProfiles.Item(1)
	Rem rule ADBE_BlankPages
	Set myRule = myProfile.PreflightProfileRules.Item(1)
	Set dataObjects = myRule.ruleDataObjects
	dataObjectCount = dataObjects.Count
	str = "Preflight rule data objects of " & myProfile.Name + "." + myRule.Name + ": "
	For i = 1 To dataObjectCount
		If i > 1 Then
			str = str & "; "
		End If
		Set dataObject = dataObjects.Item(i)
		str = str & dataObject.Name & ", "
		str = str & getDataObjectDataType(dataObject.dataType) & ", "
		str = str & dataObject.dataValue
	Next
	MsgBox(str)
	Rem </fragment>
End Function

Function myTeardown(myInDesign)
End Function

Rem <fragment>
Function getDataObjectDataType(dataType)
	If dataType = idRuleDataType.idBooleanDataType Then
		getDataObjectDataType = "Boolean"
	Elseif dataType = idRuleDataType.idIntegerDataType Then
		getDataObjectDataType = "Integer"
	Elseif dataType = idRuleDataType.idListDataType Then
		getDataObjectDataType = "List"
	Elseif dataType = idRuleDataType.idObjectDataType Then
		getDataObjectDataType = "Object"
	Elseif dataType = idRuleDataType.idRealDataType Then
		getDataObjectDataType = "Real"
	Elseif dataType = idRuleDataType.idShortIntegerDataType Then
		getDataObjectDataType = "Short Integer"
	Elseif dataType = idRuleDataType.idStringDataType Then
		getDataObjectDataType = "String"
	End If
End Function
Rem <fragment>
