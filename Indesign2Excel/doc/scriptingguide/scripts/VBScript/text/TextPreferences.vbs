Rem TextPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets text preferences.
Rem
Rem The following sets the text preferences for the application; to set the
Rem text preferences for the front-most document, replace "myInDesign.textPreferences" with
Rem "myInDesign.documents.item(1).textPreferences"
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	With myInDesign.TextPreferences
		.AbutTextToTextWrap = True
		.AddPages = idAddPageOptions.idEndOfDocument 
		Rem baseline shift key increment can range from .001 to 200 points.
		.BaselineShiftKeyIncrement = 1
		.DeleteEmptyPages = False
		.EnableStylePreviewMode = False
		.HighlightCustomSpacing = False
		.HighlightHjViolations = True
		.HighlightKeeps = True
		.HighlightSubstitutedFonts = True
		.HighlightSubstitutedGlyphs = True
		.JustifyTextWraps = True
		Rem kerning key increment value is 1/1000 of an em.
		.KerningKeyIncrement = 10
		Rem leading key increment value can range from .001 to 200 points.
		.LeadingKeyIncrement = 1
		.LimitToMasterTextFrames = False
		.LinkTextFilesWhenImporting = False
		.PreserveFacingPageSpreads = False
		.ShowInvisibles = True
		.SmallCap = 60
		.SmartTextReflow = False
		.SubscriptPosition = 30
		.SubscriptSize = 60
		.SuperscriptPosition = 30
		.SuperscriptSize = 60
		.TypographersQuotes = False
		.UseOpticalSize = False
		.UseParagraphLeading = False
		.ZOrderTextWrap = False
	End With
	Rem Text editing preferences are application-wide.
	With myInDesign.TextEditingPreferences
		.AllowDragAndDropTextInStory = True
		.DragAndDropTextInLayout = True
		.SingleClickConvertsFramesToTextFrames = True
		.SmartCutAndPaste = True
		.TripleClickSelectsLine = False
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function