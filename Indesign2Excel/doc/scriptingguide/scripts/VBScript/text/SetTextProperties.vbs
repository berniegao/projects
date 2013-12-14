Rem SetTextProperties.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to set all read/write properties of a text object.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = InDesign.idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = InDesign.idMeasurementUnits.idPoints
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = Array(72, 72, 144, 144)
	myTextFrame.Contents = "x"
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myStory = myDocument.Stories.Item(1)
	Set myTextObject = myStory.Characters.Item(1)
	myFontName = "Minion Pro" & vbTab & "Regular"
	With myTextObject
		.AlignToBaseline = False
		.AppliedCharacterStyle = myDocument.CharacterStyles.Item("[None]")
		On Error Resume Next
		.AppliedFont = myInDesign.Fonts.Item(myFontName)
		.FontStyle = "Regular"
		If Err.Number <> 0 Then
			Err.Clear
		End If
		On Error Goto 0
		.AppliedLanguage = myInDesign.LanguagesWithVendors.Item("English: USA")
		.AppliedNumberingList = myDocument.NumberingLists.Item("[Default]")
		.AppliedParagraphStyle = myDocument.ParagraphStyles.Item("[No Paragraph Style]")
		.AutoLeading = 120
		.BalanceRaggedLines = idBalanceLinesStyle.idNoBalancing
		.BaselineShift = 0
		.BulletsAlignment = idListAlignment.idLeftAlign
		.BulletsAndNumberingListType = idListType.idNoList
		.BulletsCharacterStyle = myDocument.CharacterStyles.Item("[None]")
		.BulletsTextAfter = "^t"
		.Capitalization = idCapitalization.idNormal
		.Composer = "Adobe Paragraph Composer"
		.DesiredGlyphScaling = 100
		.DesiredLetterSpacing = 0
		.DesiredWordSpacing = 100
		.DropCapCharacters = 0
		.DropCapLines = 0
		.DropCapStyle = myDocument.CharacterStyles.Item("[None]")
		.DropcapDetail = 0
		.FillColor = myDocument.Colors.Item("Black")
		.FillTint = -1
		.FirstLineIndent = 0
		.GradientFillAngle = 0
		.GradientFillLength = -1
		.GradientFillStart = Array(0, 0)
		.GradientStrokeAngle = 0
		.GradientStrokeLength = -1
		.GradientStrokeStart = Array(0, 0)
		.GridAlignFirstLineOnly = False
		.HorizontalScale = 100
		.HyphenWeight = 5
		.HyphenateAcrossColumns = True
		.HyphenateAfterFirst = 2
		.HyphenateBeforeLast = 2
		.HyphenateCapitalizedWords = True
		.HyphenateLadderLimit = 3
		.HyphenateLastWord = True
		.HyphenateWordsLongerThan = 5
		.Hyphenation = True
		.HyphenationZone = 3
		.IgnoreEdgeAlignment = False
		.Justification = idJustification.idLeftAlign
		.KeepAllLinesTogether = False
		.KeepFirstLines = 2
		.KeepLastLines = 2
		.KeepLinesTogether = False
		.KeepRuleAboveInFrame = False
		.KeepWithNext = 0
		.KerningMethod = "Optical"
		.LastLineIndent = 0
		.Leading = 12
		.LeftIndent = 0
		.Ligatures = True
		.MaximumGlyphScaling = 100
		.MaximumLetterSpacing = 0
		.MaximumWordSpacing = 133
		.MinimumGlyphScaling = 100
		.MinimumLetterSpacing = 0
		.MinimumWordSpacing = 80
		.NoBreak = False
		.NumberingAlignment = idListAlignment.idLeftAlign
		.NumberingApplyRestartPolicy = True
		.NumberingCharacterStyle = myDocument.CharacterStyles.Item("[None]")
		.NumberingContinue = True
		.NumberingExpression = "^#.^t"
		.NumberingFormat = "1, 2, 3, 4..."
		.NumberingLevel = 1
		.NumberingStartAt = 1
		.OTFContextualAlternate = True
		.OTFDiscretionaryLigature = False
		.OTFFigureStyle = idOTFFigureStyle.idProportionalLining
		.OTFFraction = False
		.OTFHistorical = False
		.OTFLocale = True
		.OTFMark = True
		.OTFOrdinal = False
		.OTFSlashedZero = False
		.OTFStylisticSets = 0
		.OTFSwash = False
		.OTFTitling = False
		.OverprintFill = False
		.OverprintStroke = False
		.PointSize = 12
		.Position = idPosition.idNormal
		.PositionalForm = idPositionalForms.idNone
		.RightIndent = 0
		.RuleAbove = False
		.RuleAboveColor = "Text Color"
		.RuleAboveGapColor = myDocument.Swatches.Item("None")
		.RuleAboveGapOverprint = False
		.RuleAboveGapTint = -1
		.RuleAboveLeftIndent = 0
		.RuleAboveLineWeight = 1
		.RuleAboveOffset = 0
		.RuleAboveOverprint = False
		.RuleAboveRightIndent = 0
		.RuleAboveTint = -1
		.RuleAboveType = myDocument.StrokeStyles.Item("Solid")
		.RuleAboveWidth = idRuleWidth.idColumnWidth
		.RuleBelow = False
		.RuleBelowColor = "Text Color"
		.RuleBelowGapColor = myDocument.Swatches.Item("None")
		.RuleBelowGapOverprint = False
		.RuleBelowGapTint = -1
		.RuleBelowLeftIndent = 0
		.RuleBelowLineWeight = 1
		.RuleBelowOffset = 0
		.RuleBelowOverprint = False
		.RuleBelowRightIndent = 0
		.RuleBelowTint = -1
		.RuleBelowType = myDocument.StrokeStyles.Item("Solid")
		.RuleBelowWidth = idRuleWidth.idColumnWidth
		.SingleWordJustification = idSingleWordJustification.idLeftAlign
		.Skew = 0
		.SpaceAfter = 0
		.SpaceBefore = 0
		.StartParagraph = idStartParagraph.idAnywhere
		.StrikeThroughColor = "Text Color"
		.StrikeThroughGapColor = myDocument.Swatches.Item("None")
		.StrikeThroughGapOverprint = False
		.StrikeThroughGapTint = -1
		.StrikeThroughOffset = -9999
		.StrikeThroughOverprint = False
		.StrikeThroughTint = -1
		.StrikeThroughType = myDocument.StrokeStyles.Item("Solid")
		.StrikeThroughWeight = -9999
		.StrikeThru = False
		.StrokeColor = myDocument.Swatches.Item("None")
		.StrokeTint = -1
		.StrokeWeight = 1
		.Tracking = 0
		.Underline = False
		.UnderlineColor = "Text Color"
		.UnderlineGapColor = myDocument.Swatches.Item("None")
		.UnderlineGapOverprint = False
		.UnderlineGapTint = -1
		.UnderlineOffset = -9999
		.UnderlineOverprint = False
		.UnderlineTint = -1
		.UnderlineType = myDocument.StrokeStyles.Item("Solid")
		.UnderlineWeight = -9999
		.VerticalScale = 100
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function