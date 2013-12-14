Rem FindGrep.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to use regular expressions (i.e., "grep") to find and change text.
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
	p1 = "This is an email address: someone@adobe.com or anyone@adobe.com." & vbCr 
	p2 = "This is some more copy with an email address that "
	p3 = "is not 24-points: someone@adobe.com or anyone@adobe.com" & vbCr 
	p4 = "This is even more example copy in 24 point text. "
	p5 = "With an email address: someone@adobe.com." & vbCr
	p6 = "This is copy in another paragraph." & vbCr
	p7 = "Note that all 24 pt email addresses are underlined." & vbCr
	myString = p1 & p2 & p3 & p4 & p5 & p6 & p7
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myTextFrame.Contents = myString
	Set myStory = myTextFrame.ParentStory
	Rem Apply formatting to the text.
	myStory.Paragraphs.Item(1).PointSize = 24
	myStory.Paragraphs.Item(2).PointSize = 12
	myStory.Paragraphs.Item(3).PointSize = 24
	myStory.Paragraphs.Item(4).PointSize = 12
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Rem Clear the find/change grep preferences.
	myInDesign.FindGrepPreferences = idNothingEnum.idNothing
	myInDesign.ChangeGrepPreferences = idNothingEnum.idNothing
	Rem Set the find options.
	myInDesign.FindChangeGrepOptions.IncludeFootnotes = False
	myInDesign.FindChangeGrepOptions.IncludeHiddenLayers = False
	myInDesign.FindChangeGrepOptions.IncludeLockedLayersForFind = False
	myInDesign.FindChangeGrepOptions.IncludeLockedStoriesForFind = False
	myInDesign.FindChangeGrepOptions.IncludeMasterPages = False
	Rem Regular expression for finding an email address.
	myInDesign.FindGrepPreferences.FindWhat = "(?i)[A-Z]*?@[A-Z]*?[.]..."
	Rem Apply the change to 24-point text only.
	myInDesign.FindGrepPreferences.PointSize = 24
	myInDesign.ChangeGrepPreferences.Underline = True
	myDocument.ChangeGrep
	Rem Clear the find/change grep preferences after the search.
	myInDesign.FindGrepPreferences = idNothingEnum.idNothing
	myInDesign.ChangeGrepPreferences = idNothingEnum.idNothing
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