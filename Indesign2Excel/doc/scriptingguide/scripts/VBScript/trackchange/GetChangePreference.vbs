Rem GetChangePreference.vbs
Rem An InCopy CS6 VBScript
Rem 
Rem Shows how to get Track change preference.

Rem

main
Function main()
	Set myInDesign = CreateObject("InDesign.Application.CS6")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
	Set myTrackChangesPreference =  myInDesign.TrackChangesPreferences
	With myTrackChangesPreference
    Rem  Property AddedBackgroundColorChoice As idChangeBackgroundColorChoices, The background color option for added text.
    Rem  idChangeBackgroundColorChoices, Background color options for changed text.
    Rem idChangeBackgroundUsesChangePrefColor  The background color for changed text is the same as the track changes preferences background color. For information, see background color for added text, background color for deleted text, or background color for moved text.
    Rem  idChangeBackgroundUsesGalleyBackgroundColor  The background color for changed text is the same as the galley background color.
    Rem  idChangeBackgroundUsesUserColor  The background color for changed text is the same as the color assigned to the current user.  
		myAddedBackgroundColorChoice = .AddedBackgroundColorChoice
		.AddedBackgroundColorChoice =idChangeBackgroundColorChoices.idChangeBackgroundUsesChangePrefColor 
		Rem idChangeTextColorChoices,Changed text color options.
		Rem  Property AddedTextColorChoice As idChangeTextColorChoices, The color option for added text.
		Rem idChangeUsesChangePrefColor,The text color for changed text is the same as the text color defined in track changes preferences. For information, see text color for added text, text color for deleted text, or text color for moved text. 
		Rem idChangeUsesGalleyTextColor,The text color for changed text is the same as the galley text color.
    myAddedTextColorChoice = .AddedTextColorChoice
    .AddedTextColorChoice = idChangeTextColorChoices.idChangeUsesChangePrefColor
    Rem BackgroundColorForAddedText,The background color for added text, specified as an InDesign UI color. Note: Valid only when added background color choice is change background uses change pref color. Type: Array of 3 Doubles (0 - 255) or idInDesignUIColors enumerator
    myBackgroundColorForAddedText = .BackgroundColorForAddedText
    .BackgroundColorForAddedText = idUIColors.idGray
    Rem BackgroundColorForDeletedText, The background color for deleted text, specified as an InDesign UI color. Note: Valid only when deleted background color choice is change background uses change pref color
		myBackgroundColorForDeletedText = .BackgroundColorForDeletedText
    .BackgroundColorForDeletedText = idUIColors.idRed
    Rem BackgroundColorForMovedText,The background color for moved text, specified as an InDesign UI color. Note: Valid only when moved background color choice is change background uses change pref color
		myBackgroundColorForMovedText = .BackgroundColorForMovedText
    .BackgroundColorForMovedText = idUIColors.idPink
    Rem ChangeBarColor, The change bar color, specified as an InDesign UI color. 
    myChangeBarColor = .ChangeBarColor
    .ChangeBarColor = idUIColors.idCharcoal
    
		Rem DeletedBackgroundColorChoice,The background color option for deleted text.
		Rem idChangeBackgroundUsesChangePrefColor  The background color for changed text is the same as the track changes preferences background color. For information, see background color for added text, background color for deleted text, or background color for moved text.
    Rem  idChangeBackgroundUsesGalleyBackgroundColor  The background color for changed text is the same as the galley background color.
    Rem  idChangeBackgroundUsesUserColor  The background color for changed text is the same as the color assigned to the current user. 
		myDeletedBackgroundColorChoice = .DeletedBackgroundColorChoice
		.DeletedBackgroundColorChoice =  idChangeBackgroundColorChoices.idChangeBackgroundUsesUserColor
		
		Rem DeletedTextColorChoice, The color option for deleted text.
		Rem idChangeUsesChangePrefColor,The text color for changed text is the same as the text color defined in track changes preferences. For information, see text color for added text, text color for deleted text, or text color for moved text. 
		Rem idChangeUsesGalleyTextColor,The text color for changed text is the same as the galley text color.
		myDeletedTextColorChoice = .DeletedTextColorChoice
		.DeletedTextColorChoice = idChangeTextColorChoices.idChangeUsesChangePrefColor
		
		Rem LocationForChangeBar,The change bar location.
		Rem  idChangebarLocations,Change bar location options.
		Rem idLeftAlign, Change bars are in the left margin.
		Rem idRightAlign, Change bars are in the right margin
		myLocationForChangeBar = .LocationForChangeBar
		.LocationForChangeBar = idChangebarLocations.idLeftAlign
		
		Rem MarkingForAddedText, The marking that identifies added text.
		Rem idChangeMarkings, Marking options for changed text.
		Rem idOutline,   Outlines changed text.
		Rem idNone, Does not mark changed text.
		Rem idStrikethrough, Uses a strikethrough to mark changed text.
		Rem idUnderlineSingle, Underlines changed text.
		myMarkingForAddedText = .MarkingForAddedText
		.MarkingForAddedText =idChangeMarkings.idStrikethrough 

		Rem MarkingForDeletedText, The marking that identifies deleted text.
		Rem idChangeMarkings, Marking options for changed text.
		Rem idOutline,   Outlines changed text.
		Rem idNone, Does not mark changed text.
		Rem idStrikethrough, Uses a strikethrough to mark changed text.
		Rem idUnderlineSingle, Underlines changed text.
		myMarkingForDeletedText = .MarkingForDeletedText
		.MarkingForDeletedText = idChangeMarkings.idUnderlineSingle
		
		Rem MarkingForMovedText, The marking that identifies moved text.
		Rem idChangeMarkings, Marking options for changed text.
		Rem idOutline,   Outlines changed text.
		Rem idNone, Does not mark changed text.
		Rem idStrikethrough, Uses a strikethrough to mark changed text.
		Rem idUnderlineSingle, Underlines changed text.
		myMarkingForMovedText = .MarkingForMovedText
		.MarkingForMovedText =  idChangeMarkings.idOutline
		
		Rem MovedBackgroundColorChoice,The background color option for moved text.
		Rem idChangeBackgroundUsesChangePrefColor  The background color for changed text is the same as the track changes preferences background color. For information, see background color for added text, background color for deleted text, or background color for moved text.
    Rem  idChangeBackgroundUsesGalleyBackgroundColor  The background color for changed text is the same as the galley background color.
    Rem  idChangeBackgroundUsesUserColor  The background color for changed text is the same as the color assigned to the current user. 
		myMovedBackgroundColorChoice = .MovedBackgroundColorChoice
		.MovedBackgroundColorChoice = idChangeBackgroundColorChoices.idChangeBackgroundUsesChangePrefColor
		
		Rem MovedTextColorChoice, The color option for moved text.
		Rem idChangeUsesChangePrefColor,The text color for changed text is the same as the text color defined in track changes preferences. For information, see text color for added text, text color for deleted text, or text color for moved text. 
		Rem idChangeUsesGalleyTextColor,The text color for changed text is the same as the galley text color.
		myMovedTextColorChoice = .MovedTextColorChoice
		.MovedTextColorChoice = idChangeTextColorChoices.idChangeUsesChangePrefColor 
		
		Rem if true, displays added text.
		myShowAddedText = .ShowAddedText
		.ShowAddedText = true
	
	  Rem  If true, displays change bars.
	  myShowChangeBars  = .ShowChangeBars
	  .ShowChangeBars = true
	  
		Rem ShowDeletedText, If true, displays deleted text.
		myShowDeletedText = .ShowDeletedText
		.ShowDeletedText = true
		
		Rem ShowMovedText,If true, displays moved text.
		myShowMovedText = .ShowMovedText
		.ShowMovedText = true
		
		Rem SpellCheckDeletedText, If true, includes deleted text when using the Spell Check command.
		mySpellCheckDeletedText = .SpellCheckDeletedText
		.SpellCheckDeletedText = true

		Rem TextColorForAddedText, The color for added text, specified as an InDesign UI color. Note: Valid only when added text color choice is change uses change pref color.	
		myTextColorForAddedText =  .TextColorForAddedText
		.TextColorForAddedText =  idUIColors.idBlue
		
		Rem  TextColorForDeletedText,The color for deleted text.
		myTextColorForDeletedText = .TextColorForDeletedText
		.TextColorForDeletedText = idUIColors.idYellow
		
		Rem  TextColorForMovedText,The color for moved text.
		myTextColorForMovedText = .TextColorForMovedText
		.TextColorForMovedText =  idUIColors.idGreen
	End With
	
		
End Function
Function myTeardown(myInDesign)
End Function