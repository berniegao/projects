Rem ConvertXMLElementToTable.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to convert a series of XML elements to a table
Rem using the ConvertTextToTableByTag method.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Rem Create a series of XML tags.
	Set myRowTag = myDocument.XMLTags.Add("row")
	Set myCellTag = myDocument.XMLTags.Add("cell")
	Set myTableTag = myDocument.XMLTags.Add("table")
	Rem Add XML elements.
	Set myRootXMLElement = myDocument.XMLElements.Item(1)
	With myRootXMLElement
		Set myTableXMLElement = .XMLElements.Add(myTableTag)
		With myTableXMLElement
			For myRowCounter = 1 To 6
				With .XMLElements.Add(myRowTag)
					.Contents = "Row " + CStr(myRowCounter)
					For myCellCounter = 1 To 4
						With .XMLElements.Add(myCellTag)
							.Contents = "Cell " + CStr(myCellCounter)
						End With
					Next
				End With
			Next
		End With
	End With
	Set myTable = myTableXMLElement.ConvertElementToTable(myRowTag, myCellTag)
	Set myTextFrame = myDocument.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myDocument.XMLElements.Item(1).PlaceXML myTextFrame
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myGetBounds(myDocument, myPage)
	myPageWidth = myDocument.DocumentPreferences.PageWidth
	myPageHeight = myDocument.DocumentPreferences.PageHeight
	If myPage.Side = idPageSideOptions.idLeftHand Then
		myX2 = myPage.MarginPreferences.Left
		myX1 = myPage.MarginPreferences.Right
	Else
		myX1 = myPage.MarginPreferences.Left
		myX2 = myPage.MarginPreferences.Right
	End If
	myY1 = myPage.marginPreferences.Top
	myX2 = myPageWidth - myX2
	myY2 = myPageHeight - myPage.MarginPreferences.Bottom
	myGetBounds = Array(myY1, myX1, myY2, myX2)
End Function