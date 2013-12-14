Rem ReadPMTags.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to use regular expressions to read an imported PageMaker paragraph tags file.
Rem PageMaker paragraph tags (which are not the same as PageMaker tagged text format files) are a
Rem simplified text markup scheme. Paragraph style names appear at the start of a paragraph:
Rem <heading1>This is some text.
Rem <body_text>This is body text.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
   Set myDocument = myInDesign.Documents.Add
   set myPage = myDocument.Pages.Item(1)
   Rem Create some example marked-up text (as if it had been imported).
   myString = "<heading1>Heading One." & vbCr
   myString = myString & "<body_text>This is an example paragraph of body text." & vbCr
   myString = myString & "<body_text>This is another example paragraph of body text." & vbCr
   myString = myString & "<heading2>Heading Two." & vbCr
   myString = myString & "<body_text>This is an example paragraph of body text." & vbCr
   myString = myString & "<body_text>This is another example paragraph of body text." & vbCr
   myString = myString & "<heading2>Heading Two." & vbCr
   myString = myString & "<body_text>This is an example paragraph of body text." & vbCr
   myString = myString & "<body_text>This is another example paragraph of body text." & vbCr
   Rem Create an example document.
   Set myTextFrame = myPage.TextFrames.Add
   myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
   myTextFrame.Contents = myString
End Function
Function mySnippet(myInDesign)
   Rem <fragment>
   Set myInDesign = CreateObject("InDesign.Application")
   Rem Access the active document.
   Set myDocument = myInDesign.Documents.Item(1)
   Set myStory = myDocument.Stories.Item(1)
   myReadPMTags myInDesign, myStory
   Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem <fragment>
Function myReadPMTags(myInDesign, myStory)
   Set myDocument = myStory.Parent
   Rem Reset the findGrepPreferences to ensure that previous settings
   Rem do not affect the search.
   myInDesign.FindGrepPreferences = idNothingEnum.idNothing
   myInDesign.ChangeGrepPreferences = idNothingEnum.idNothing
   Rem Find the tags.
   myInDesign.FindGrepPreferences.findWhat = "(?i)^<\s*\w+\s*>"
   Set myFoundItems = myStory.findGrep
   If myFoundItems.Count <> 0 Then
     Set myFoundTags = CreateObject("Scripting.Dictionary")
     For myCounter = 1 To myFoundItems.Count
         If Not (myFoundTags.Exists(myFoundItems.Item(myCounter).Contents)) Then
             myFoundTags.Add myFoundItems.Item(myCounter).Contents, myFoundItems.Item(myCounter).Contents
         End If
     Next
     Rem At this point, we have a list of tags to search for.
     For Each myFoundTag In myFoundTags
         myString = myFoundTag
         Rem Find the tag using findWhat.
         myInDesign.FindTextPreferences.findWhat = myString
         Rem Extract the style name from the tag.
         myStyleName = Mid(myString, 2, Len(myString) - 2)
         Rem Create the style if it does not already exist.
         Set myStyle = myAddStyle(myDocument, myStyleName)
         Rem Apply the style to each instance of the tag.
         myInDesign.ChangeTextPreferences.AppliedParagraphStyle = myStyle
         myStory.ChangeText
         Rem Reset the changeTextPreferences.
         myInDesign.ChangeTextPreferences = idNothingEnum.idNothing
         Rem Set the changeTo to an empty string.
         myInDesign.ChangeTextPreferences.ChangeTo = ""
         Rem Search to remove the tags.
         myStory.ChangeText
         Rem Reset the find/change preferences again.
         myInDesign.ChangeTextPreferences = idNothingEnum.idNothing
     Next
   End If
   myInDesign.FindGrepPreferences = idNothingEnum.idNothing
   myInDesign.ChangeGrepPreferences = idNothingEnum.idNothing
End Function
Rem</fragment>
Function myAddStyle(myDocument, myStyleName)
	On Error Resume Next
	Set myStyle = myDocument.ParagraphStyles.Item(myStyleName)
	If Err.Number <> 0 Then
		Set myStyle = myDocument.ParagraphStyles.Add
		myStyle.Name = myStyleName
		Err.Clear
	End If
	On Error GoTo 0
	Set myAddStyle = myStyle
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