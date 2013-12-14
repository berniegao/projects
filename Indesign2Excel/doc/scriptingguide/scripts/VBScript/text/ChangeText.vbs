Rem ChangeText.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to find and change text.
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
	myString = "This is some copy. This is some more copy."
	myString = myString & "This is even more example copy." & vbcr
	myString = myString & "This is copy in another paragraph."
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myTextFrame.Contents = myString
End Function
Function mySnippet(myInDesign)
   Rem <fragment>
   Set myDocument = myInDesign.Documents.Item(1)
   Rem Clear the find/change text preferences.
   myInDesign.FindTextPreferences = idNothingEnum.idNothing
   myInDesign.ChangeTextPreferences = idNothingEnum.idNothing
   Rem Search the document for the string "copy" and replace with "text".
   myInDesign.FindTextPreferences.FindWhat = "copy"
   myInDesign.ChangeTextPreferences.ChangeTo = "text"
   Rem Set the find options.
   myInDesign.FindChangeTextOptions.CaseSensitive = False
   myInDesign.FindChangeTextOptions.IncludeFootnotes = False
   myInDesign.FindChangeTextOptions.IncludeHiddenLayers = False
   myInDesign.FindChangeTextOptions.IncludeLockedLayersForFind = False
   myInDesign.FindChangeTextOptions.IncludeLockedStoriesForFind = False
   myInDesign.FindChangeTextOptions.IncludeMasterPages = False
   myInDesign.FindChangeTextOptions.WholeWord = False
   Set myFoundItems = myInDesign.Documents.Item(1).ChangeText
   MsgBox ("Changed " & CStr(myFoundItems.Count) & " instances of the search string.")
   Rem Clear the find/change text preferences.
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