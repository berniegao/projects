Rem Markup.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to use the Markup method.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Set myPage = myInDesign.ActiveWindow.ActivePage
	Set myRootXMLElement = myDocument.xmlElements.item(1)
	Set myXMLTag = myDocument.xmlTags.add("xml_element")
	Set myXMLElementA = myRootXMLElement.xmlElements.add(myXMLTag)
	myXMLElementA.contents = "This is a paragraph in an XML story."
	Set myTextFrame = myDocument.pages.item(1).textFrames.add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myString = "This is the first paragraph in a text frame." & vbCr
	myString = myString & "This is the second paragraph in a text frame." & vbCr
	myString = myString & "This is the third paragraph in a text frame." & vbCr
	myString = myString & "This is the fourth paragraph in a text frame." & vbCr
	myTextFrame.contents = myString
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	myDocument.xmlElements.item(1).xmlElements.item(1).markup myPage.textFrames.item(1)
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