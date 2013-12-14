Rem ProcessPrice.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Provide an importable ProcessPrice example for the XMLRulesTable script.

Rem <fragment>
Class ProcessPrice
	Public Property Get name
		name = "ProcessPrice"
	End Property
	Public Property Get xpath
		xpath = "//device[@type = 'VCO']/price"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		glueCode_skipChildren(myRuleProcessor)
		With myXMLElement
			Set myLastElement = myContainerElement.XMLElements.Item(-1)
			Set myNewElement = myLastElement.XMLElements.add(myCellTag)
			Set myPriceElement = .Move(idLocationOptions.idAtBeginning, myNewElement)
			myPriceElement.InsertTextAsContent "$", idXMLElementPosition.idBeforeElement
		End With
		apply = true
	End Function 
End Class
Rem </fragment>
