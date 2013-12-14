Rem SampleXMLRule.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem A Sample XML Rule

Rem <fragment>
Class RuleName
	Public Property Get name
		name = "RuleNameAsString"
	End Property
	Public Property Get xpath
		xpath = "ValidXPathSpecifier"
	End Property
	Public Function  apply (myXMLElement, myRulesProcessor)
		Rem Do something here.
		Rem Return true to stop further processing of the XML element.
		apply = False
	End Function
End Class
Rem </fragment>
