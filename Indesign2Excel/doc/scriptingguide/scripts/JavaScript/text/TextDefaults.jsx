//TextDefaults.jsx
//An InDesign CS6 JavaScript
//
//Sets the text defaults of a new document, which set the default formatting
//for all new text frames. Existing text frames are unaffected. 
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	//To set the application text formatting defaults, replace the variable "myDocument"
	//with "app" in the following lines.
	with(myDocument.textDefaults){
		alignToBaseline = true;
		//Because the font might not be available, it's usually best
		//to apply the font within a try...catch structure. Fill in the
		//name of a font on your system.
		try{
		appliedFont = app.fonts.item("Minion Pro");
		}
		catch(e){}
		//Because the font style might not be available, it's usually best
		//to apply the font style within a try...catch structure.
		try{
		fontStyle = "Regular";
		}
		catch(e){}
		//Because the language might not be available, it's usually best
		//to apply the language within a try...catch structure.
		try{
			appliedLanguage = "English: USA";
		}
		catch(e){}
		autoLeading = 100;
		balanceRaggedLines = false;
		baselineShift = 0;
		capitalization = Capitalization.normal;
		composer = "Adobe Paragraph Composer";
		desiredGlyphScaling = 100;
		desiredLetterSpacing = 0;
		desiredWordSpacing = 100;
		dropCapCharacters = 0;
		if(dropCapCharacters != 0){
		dropCapLines = 3;
		//Assumes that the application has a default character style named "myDropCap"
			dropCapStyle = myDocument.characterStyles.item("myDropCap");
		}
		fillColor = myDocument.colors.item("Black");
		fillTint = 100;
		firstLineIndent = 14;
		gridAlignFirstLineOnly = false;
		horizontalScale = 100;
		hyphenateAfterFirst = 3;
		hyphenateBeforeLast = 4;
		hyphenateCapitalizedWords = false;
		hyphenateLadderLimit = 1;
		hyphenateWordsLongerThan = 5;
		hyphenation = true;
		hyphenationZone = 36;
		hyphenWeight = 9;
		justification = Justification.leftAlign;
		keepAllLinesTogether = false;
		keepLinesTogether = true;
		keepFirstLines = 2;
		keepLastLines = 2;
		keepWithNext = 0;
		kerningMethod = "Optical";
		kerningValue = 0;
		leading = 14;
		leftIndent = 0;
		ligatures = true;
		maximumGlyphScaling = 100;
		maximumLetterSpacing = 0;
		maximumWordSpacing = 160;
		minimumGlyphScaling = 100;
		minimumLetterSpacing = 0;
		minimumWordSpacing = 80;
		noBreak = false;
		otfContextualAlternate = true;
		otfDiscretionaryLigature = false;
		otfFigureStyle = OTFFigureStyle.proportionalOldstyle;
		otfFraction = true;
		otfHistorical = false;
		otfOrdinal = false;
		otfSlashedZero = false;
		otfSwash = false;
		otfTitling = false;
		overprintFill = false;
		overprintStroke = false;
		pointSize = 11;
		position = Position.normal;
		rightIndent = 0;
		ruleAbove = false;
		if(ruleAbove == true){
			ruleAboveColor = myDocument.colors.item("Black");
			ruleAboveGapColor = myDocument.swatches.item("None");
			ruleAboveGapOverprint = false;
			ruleAboveGapTint = 100;
			ruleAboveLeftIndent = 0;
			ruleAboveLineWeight = .25;
			ruleAboveOffset = 14;
			ruleAboveOverprint = false;
			ruleAboveRightIndent = 0;
			ruleAboveTint = 100;
			ruleAboveType = myDocument.strokeStyles.item("Solid");
			ruleAboveWidth = RuleWidth.columnWidth;
		}
		ruleBelow = false;
		if(ruleBelow == true){
			ruleBelowColor = myDocument.colors.item("Black");
			ruleBelowGapColor = myDocument.swatches.item("None");
			ruleBelowGapOverprint = false;
			ruleBelowGapTint = 100;
			ruleBelowLeftIndent = 0;
			ruleBelowLineWeight = .25;
			ruleBelowOffset = 0;
			ruleBelowOverprint = false;
			ruleBelowRightIndent = 0;
			ruleBelowTint = 100;
			ruleBelowType = app.strokeStyles.item("Solid");
			ruleBelowWidth = RuleWidth.columnWidth;
		}
		singleWordJustification = SingleWordJustification.leftAlign;
		skew = 0;
		spaceAfter = 0;
		spaceBefore = 0;
		startParagraph = StartParagraph.anywhere;
		strikeThru = false;
		if(strikeThru == true){
			strikeThroughColor = myDocument.colors.item("Black");
			strikeThroughGapColor = myDocument.swatches.item("None");
			strikeThroughGapOverprint = false;
			strikeThroughGapTint = 100;
			strikeThroughOffset = 3;
			strikeThroughOverprint = false;
			strikeThroughTint = 100;
			strikeThroughType = myDocument.strokeStyles.item("Solid");
			strikeThroughWeight = .25;
		}
		strokeColor = myDocument.swatches.item("None");
		strokeTint = 100;
		strokeWeight = 0;
		tracking = 0;
		underline = false;
		if(underline == true){
			underlineColor = myDocument.colors.item("Black");
			underlineGapColor = myDocument.swatches.item("None");
			underlineGapOverprint = false;
			underlineGapTint = 100;
			underlineOffset = 3;
			underlineOverprint = false;
			underlineTint = 100;
			underlineType = myDocument.strokeStyles.item("Solid");
			underlineWeight = .25
		}
		verticalScale = 100;
	}
	//</fragment>
}

function myTeardown(){
}
