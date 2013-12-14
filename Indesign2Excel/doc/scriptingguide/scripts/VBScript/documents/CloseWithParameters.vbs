Rem CloseWithParameters.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Close the active document with parameters.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Rem Create a text frame on the current page.
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myTextFrame.Contents = "This is some example text."
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Rem Close the active document with parameters:
	Rem Use idSaveOptions.idYes to save the document
	Rem or idSaveOptions.idNo to close the document without saving
	Rem or idSaveOptions.idAsk to display a prompt.
	Rem If you use idSaveOptions.idYes, you'll need to provide a reference
	Rem to a file to save to in the second parameter.
	Rem If the file has not been saved, display a prompt.
	If myDocument.Saved <> True Then
		Rem myDocument.Close idSaveOptions.idAsk
		Rem Or, to save to a specific file name (you'll have
		Rem to fill in your own file path.
		myFile = "c:\CloseWithParameters.indd"
		myDocument.Close idSaveOptions.idYes, myFile
	Else
		Rem If the file has already been saved, save it.
		myDocument.Close idSaveOptions.idYes
	End If
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
	myGetBounds =  Array(myY1, myX1, myY2, myX2)
End Function