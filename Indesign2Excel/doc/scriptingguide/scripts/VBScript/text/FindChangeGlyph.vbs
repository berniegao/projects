Rem FindChangeGlyph.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to use find glyph/change glyph.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myString = "This is an example paragraph containing a specific glyph: <25A0>." & vbCr
	myString = myString & "This is an example paragraph containing a specific glyph: <25A0>." & vbCr
	myString = myString & "This is an example paragraph containing a specific glyph: <25A0>." & vbCr
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myTextFrame.Contents = myString
End Function
Function mySnippet(myInDesign)
	Rem Clear the find/change glyph preferences.
	myInDesign.FindGlyphPreferences = idNothingEnum.idNothing
	myInDesign.ChangeGlyphPreferences = idNothingEnum.idNothing
	Rem Set the find options.
	myInDesign.FindChangeGrepOptions.IncludeFootnotes = False
	myInDesign.FindChangeGrepOptions.IncludeHiddenLayers = False
	myInDesign.FindChangeGrepOptions.IncludeLockedLayersForFind = False
	myInDesign.FindChangeGrepOptions.IncludeLockedStoriesForFind = False
	myInDesign.FindChangeGrepOptions.IncludeMasterPages = False
	Rem You must provide a font that is used in the document for the
	Rem AppliedFont property of the FindGlyphPreferences object.
	myInDesign.FindGlyphPreferences.AppliedFont = myInDesign.Fonts.Item("Minion Pro" & vbTab & "Regular")
	Rem Provide the glyph ID, not the glyph Unicode value.
	myInDesign.FindGlyphPreferences.GlyphID = 374
	Rem The appliedFont of the changeGlyphPreferences object can be
	Rem any font available to the application.
	myInDesign.changeGlyphPreferences.AppliedFont = myInDesign.Fonts.Item("Times New Roman" & vbTab & "Bold")
	myInDesign.changeGlyphPreferences.GlyphID = 85
	myInDesign.Documents.Item(1).ChangeGlyph
	Rem Clear the find/change glyph preferences after the search.
	myInDesign.FindGlyphPreferences = idNothingEnum.idNothing
	myInDesign.ChangeGlyphPreferences = idNothingEnum.idNothing
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