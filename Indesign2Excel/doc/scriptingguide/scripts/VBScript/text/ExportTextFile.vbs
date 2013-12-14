Rem ExportTextFile.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a story in an example document and then exports the text to a text file.
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
	Rem Create a text frame on the active page.
	Set myTextFrame = myPage.TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage)
	Rem Fill the text frame with placeholder text.
	myTextFrame.Contents = idTextFrameContents.idPlaceholderText
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Item(1)
	Rem Text export method parameters:
	Rem Format as idExportFormat
	Rem To As File
	Rem [ShowingOptions As Boolean = False]
	Rem
	Rem Format parameter can be:
	Rem idExportFormat.idInCopy
	Rem idExportFormat.idInCopyCS2Story
	Rem idExportFormat.idRTF
	Rem idExportFormat.idTaggedText
	Rem idExportFormat.idTextType
	Rem
	Rem Export the story as text. You'll have to fill in a valid file path on your system.
	myTextFrame.ParentStory.Export idExportFormat.idTextType, "C:\test.txt"
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myGetBounds(myDocument, myPage)
	myPageWidth = myDocument.documentPreferences.pageWidth
	myPageHeight = myDocument.documentPreferences.pageHeight
	If myPage.Side = idPageSideOptions.idLeftHand Then
		myX2 = myPage.marginPreferences.Left
		myX1 = myPage.marginPreferences.Right
	Else
		myX1 = myPage.marginPreferences.Left
		myX2 = myPage.marginPreferences.Right
	End If
	myX2 = myPageWidth - myX2
	myY1 = myPage.marginPreferences.Top
	myY2 = myPageHeight - myPage.marginPreferences.bottom
	myGetBounds = Array(myY1, myX1, myY2, myX2)
End Function