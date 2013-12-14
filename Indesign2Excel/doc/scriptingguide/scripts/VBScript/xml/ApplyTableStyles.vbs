Rem ApplyTableStyle.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to convert a series of XML elements to a table
Rem using the ConvertTextToTableByTag method and apply a style
Rem to them.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.documents.add()
	Rem Create a series of XML tags.
	Set myRowTag = myDocument.xmlTags.add("Row")
	Set myCellTag = myDocument.xmlTags.add("Cell")
	Set myTableTag = myDocument.xmlTags.add("Table")
	Rem Create a table style and a cell style.
	Set myTableStyle = myDocument.tableStyles.add
	myTableStyle.name = "myTableStyle"
	myTableStyle.startRowFillColor = myDocument.colors.item("Black")
	myTableStyle.startRowFillTint = 25
	myTableStyle.endRowFillColor = myDocument.colors.item("Black")
	myTableStyle.endRowFillTint = 10
	Set myCellStyle = myDocument.cellStyles.add
	myCellStyle.name = "myCellStyle"
	myCellStyle.fillColor = myDocument.colors.item("Black")
	myCellStyle.fillTint = 45
	Rem Add XML elements.
	Set myRootXMLElement = myDocument.xmlElements.item(1)
	With myRootXMLElement
		Set myTableXMLElement = .xmlElements.add(myTableTag)
		With myTableXMLElement
			for myRowCounter = 1 To 6
				With .xmlElements.add(myRowTag)
					myString = "Row " & CStr(myRowCounter)
					For myCellCounter = 1 To 4
					With .xmlElements.add(myCellTag)
						.contents = myString & ":Cell " & CStr(myCellCounter)
						End With
					Next
				End With
			Next
		End With
	End With
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myRootXMLElement = myDocument.XMLElements.Item(1)
	Set myTableXMLElement = myRootXMLElement.XMLElements.Item(1)
	Set myRowTag = myDocument.XMLTags.Item("Row")
	Set myCellTag = myDocument.XMLTags.Item("Cell")
	Set myTableStyle = myDocument.TableStyles.Item("myTableStyle")
	Set myCellStyle = myDocument.CellStyles.Item("myCellStyle")
	Set myTable = myTableXMLElement.convertElementToTable(myRowTag, myCellTag)
	Set myTableXMLElement = myDocument.xmlElements.item(1).xmlElements.item(1)
	myTableXMLElement.applyTableStyle(myTableStyle)
	myTableXMLElement.xmlElements.item(1).applyCellStyle(myCellStyle)
	myTableXMLElement.xmlElements.item(6).applyCellStyle(myCellStyle)
	myTableXMLElement.xmlElements.item(11).applyCellStyle(myCellStyle)
	myTableXMLElement.xmlElements.item(16).applyCellStyle(myCellStyle)
	myTableXMLElement.xmlElements.item(17).applyCellStyle(myCellStyle)
	myTableXMLElement.xmlElements.item(22).applyCellStyle(myCellStyle)
	Rem  Add text elements.
	Set myPage = myDocument.pages.item(1)
	Set myTextFrame = myPage.textFrames.add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	Set myStory = myTextFrame.parentStory
	myStory.placeXML myRootXMLElement
	myTable.alternatingFills = idAlternatingFillsTypes.idAlternatingRows
	Rem</fragment>
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