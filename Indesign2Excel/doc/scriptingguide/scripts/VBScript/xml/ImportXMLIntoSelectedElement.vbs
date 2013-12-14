Rem ImportXMLIntoSelectedElement.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Imports an XML element into a selected XML element.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
End Function
Function mySnippet(myInDesign)
   Rem <fragment>
   Set myDocument = myInDesign.Documents.Item(1)
   Set myPage = myDocument.Pages.Item(1)
   Set myTextFrame = myPage.TextFrames.Item(1)
   Rem You'll have to fill in your own file path.
   myDocument.ImportXML "c:\test.xml"
   Set myRootXMLElement = myDocument.XMLElements.Item(1)
   Set myLastXMLElement = myRootXMLElement.XMLElements.Item(-1)
   Rem Select the XML element
   myDocument.Select myLastXMLElement, idSelectionOptions.idReplaceWith
   myDocument.XMLImportPreferences.ImportToSelected = True
   myDocument.ImportXML "c:\test.xml"
   myRootXMLElement.PlaceXML myTextFrame
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