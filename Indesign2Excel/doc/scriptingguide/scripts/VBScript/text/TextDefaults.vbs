Rem TextDefaults.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets the text defaults of a new document, which set the default formatting
Rem for all new text frames. Existing text frames are unaffected.
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
	With myInDesign.TextDefaults
		.AlignToBaseline = True
		Rem Because the font might not be available, it's usually best
		Rem to trap errors using "On Error Resume Next" error handling.
		Rem Fill in the name of a font on your system.
		Err.Clear
		On Error Resume Next
		.AppliedFont = myInDesign.Fonts.Item("Minion Pro")
		If Err.Number <> 0 Then
			Err.Clear
		End If
		On Error GoTo 0
		Rem Because the font style might not be available, it's usually best
		Rem to trap errors using "On Error Resume Next" error handling.
		Err.Clear
		On Error Resume Next
			.FontStyle = "Regular"
		If Err.Number <> 0 Then
			Err.Clear
		End If
		On Error GoTo 0	
		Rem Because the language might not be available, it's usually best
		Rem to trap errors using "On Error Resume Next" error handling.
		Err.Clear
		On Error Resume Next
		.AppliedLanguage = "English: USA"
		If Err.Number <> 0 Then
			Err.Clear
		End If
		On Error GoTo 0
		.AutoLeading = 100
		.BalanceRaggedLines = False
		.BaselineShift = 0
		.Capitalization = idCapitalization.idNormal
		.Composer = "Adobe Paragraph Composer"
		.DesiredGlyphScaling = 100
		.DesiredLetterSpacing = 0
		.DesiredWordSpacing = 100
		.DropCapCharacters = 0
		If .DropCapCharacters <> 0 Then
			.DropCapLines = 3
			On Error Resume Next
			.DropCapStyle = myInDesign.CharacterStyles.Item("myDropCap")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
		End If
		On Error Resume Next
		.FillColor = myInDesign.Colors.Item("Black")
		If Err.Number <> 0 Then
			Err.Clear
		End If
		On Error GoTo 0		
		.FillTint = 100
		.FirstLineIndent = 14
		.GridAlignFirstLineOnly = False
		.HorizontalScale = 100
		.HyphenateAfterFirst = 3
		.HyphenateBeforeLast = 4
		.HyphenateCapitalizedWords = False
		.HyphenateLadderLimit = 1
		.HyphenateWordsLongerThan = 5
		.Hyphenation = True
		.HyphenationZone = 36
		.HyphenWeight = 9
		.Justification = idJustification.idLeftAlign
		.KeepAllLinesTogether = False
		.KeepLinesTogether = True
		.KeepFirstLines = 2
		.KeepLastLines = 2
		.KeepWithNext = 0
		.KerningMethod = "Optical"
		.Leading = 14
		.LeftIndent = 0
		.Ligatures = True
		.MaximumGlyphScaling = 100
		.MaximumLetterSpacing = 0
		.MaximumWordSpacing = 160
		.MinimumGlyphScaling = 100
		.MinimumLetterSpacing = 0
		.MinimumWordSpacing = 80
		.NoBreak = False
		.OTFContextualAlternate = True
		.OTFDiscretionaryLigature = True
		.OTFFigureStyle = idOTFFigureStyle.idProportionalOldstyle
		.OTFFraction = True
		.OTFHistorical = True
		.OTFOrdinal = False
		.OTFSlashedZero = True
		.OTFSwash = False
		.OTFTitling = False
		.OverprintFill = False
		.OverprintStroke = False
		.PointSize = 11
		.Position = idPosition.idNormal
		.RightIndent = 0
		.RuleAbove = False
		If .RuleAbove = True Then
			On Error Resume Next
			.RuleAboveColor = myInDesign.Colors.Item("Black")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0
			On Error Resume Next
			.RuleAboveGapColor = myInDesign.Swatches.Item("None")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
			.RuleAboveGapOverprint = False
			.RuleAboveGapTint = 100
			.RuleAboveLeftIndent = 0
			.RuleAboveLineWeight = 0.25
			.RuleAboveOffset = 14
			.RuleAboveOverprint = False
			.RuleAboveRightIndent = 0
			.RuleAboveTint = 100
			On Error Resume Next
			.RuleAboveType = myInDesign.StrokeStyles.Item("Solid")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
			.RuleAboveWidth = idRuleWidth.idColumnWidth
		End If
		.RuleBelow = False
		If .RuleBelow = True Then
			On Error Resume Next
			.RuleBelowColor = myInDesign.Colors.Item("Black")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
			On Error Resume Next
			.RuleBelowGapColor = myInDesign.Swatches.Item("None")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
			.RuleBelowGapOverPrint = False
			.RuleBelowGapTint = 100
			.RuleBelowLeftIndent = 0
			.RuleBelowLineWeight = 0.25
			.RuleBelowOffset = 0
			.RuleBelowOverPrint = False
			.RuleBelowRightIndent = 0
			.RuleBelowTint = 100
			On Error Resume Next
			.RuleBelowType = myInDesign.StrokeStyles.Item("Solid")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
			.RuleBelowWidth = idRuleWidth.idColumnWidth
		End If
		.SingleWordJustification = idSingleWordJustification.idLeftAlign
		.Skew = 0
		.SpaceAfter = 0
		.SpaceBefore = 0
		.StartParagraph = idStartParagraph.idAnywhere
		.StrikeThru = False
		If .StrikeThru = True Then
			On Error Resume Next
			.StrikeThroughColor = myInDesign.Colors.Item("Black")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
			On Error Resume Next
			.StrikeThroughGapColor = myInDesign.Swatches.Item("None")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
			.StrikeThroughGapOverprint = False
			.StrikeThroughGapTint = 100
			.StrikeThroughOffset = 3
			.StrikeThroughOverprint = False
			.StrikeThroughTint = 100
			On Error Resume Next
			.StrikeThroughType = myInDesign.StrokeStyles.Item("Solid")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
			.StrikeThroughWeight = 0.25
		End If
		On Error Resume Next
		.StrokeColor = myInDesign.Swatches.Item("None")
		If Err.Number <> 0 Then
			Err.Clear
		End If
		On Error GoTo 0			
		.StrokeTint = 100
		.StrokeWeight = 0
		.Tracking = 0
		.Underline = False
		If .Underline = True Then
			On Error Resume Next
			.UnderlineColor = myInDesign.Colors.Item("Black")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
			On Error Resume Next
			.UnderlineGapColor = myInDesign.Swatches.Item("None")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
			.UnderlineGapOverprint = False
			.UnderlineGapTint = 100
			.UnderlineOffset = 3
			.UnderlineOverprint = False
			.UnderlineTint = 100
			On Error Resume Next
			.UnderlineType = myInDesign.StrokeStyles.Item("Solid")
			If Err.Number <> 0 Then
				Err.Clear
			End If
			On Error GoTo 0			
			.UnderlineWeight = 0.25
		End If
		.VerticalScale = 100
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function