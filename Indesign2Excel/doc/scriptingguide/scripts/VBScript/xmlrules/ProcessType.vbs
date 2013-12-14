Rem ProcessType.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Provide an importable ProcessType example for the XMLRulesLayout script.

Rem <fragment>
Class ProcessType
	Public Property Get name
		name = "ProcessType"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/type"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		With myXMLElement
			Set myPage = myDocument.Pages.Item(-1)
			myBounds = myGetBounds(myDocument, myPage)
			myX1 = myBounds(1)
			myY1 = myBounds(0)
			myBounds = Array(myY1-24, myX1, myY1, myX1 + 48)
			Set myTextFrame = .PlaceIntoFrame(myPage, myBounds)
			myTextFrame.TextFramePreferences.InsetSpacing = Array(6, 6, 6, 6)
			myTextFrame.FillColor = myDocument.Swatches.Item("Red")
			.ApplyParagraphStyle myDocument.ParagraphStyles.Item("DeviceType")
		End With
		apply = true
	End Function 
End Class
Rem </fragment>
