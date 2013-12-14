Rem FindChangeFormatting.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to find and change text formatting.
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
	Rem Create a text frame on page 1.
	set myTextFrame = myPage.textFrames.add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage)
	myString = "This is some copy." & vbCr
	myString = myString & "This is some more copy." & vbCr
	myString = myString & "This is even more example copy." & vbcr
	myString = myString & "This is copy in another paragraph." & vbcr
	myTextFrame.contents = myString
	Rem Apply formatting to the text.
	myTextFrame.parentStory.paragraphs.item(1).pointSize = 24
	myTextFrame.parentStory.paragraphs.item(2).pointSize = 12	
	myTextFrame.parentStory.paragraphs.item(3).pointSize = 24	
	myTextFrame.parentStory.paragraphs.item(4).pointSize = 12
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Rem Clear the find/change preferences.
	myInDesign.FindTextPreferences = idNothingEnum.idNothing
	myInDesign.ChangeTextPreferences = idNothingEnum.idNothing
	Rem Set the find options.
	myInDesign.FindChangeTextOptions.CaseSensitive = false
	myInDesign.FindChangeTextOptions.IncludeFootnotes = false
	myInDesign.FindChangeTextOptions.IncludeHiddenLayers = false
	myInDesign.FindChangeTextOptions.IncludeLockedLayersForFind = false
	myInDesign.FindChangeTextOptions.IncludeLockedStoriesForFind = false
	myInDesign.FindChangeTextOptions.IncludeMasterPages = false
	myInDesign.FindChangeTextOptions.WholeWord = false
	Rem Search the document for the 24 point text and change it to 10 point text.
	myInDesign.findTextPreferences.pointSize = 24
	myInDesign.changeTextPreferences.pointSize = 10
	myInDesign.documents.item(1).changeText
	Rem Clear the find/change preferences after the search.
	myInDesign.FindTextPreferences = idNothingEnum.idNothing
	myInDesign.ChangeTextPreferences = idNothingEnum.idNothing
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
	myGetBounds =  Array(myY1, myX1, myY2, myX2)
End Function