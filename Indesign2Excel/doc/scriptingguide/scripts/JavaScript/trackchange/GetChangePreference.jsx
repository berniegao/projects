//GetChangePreference.jsx
//An InCopy CS6 JavaScript
//
//Shows how to get Track change preference.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
}
function mySnippet(){
	
	myGetChangePreference();
}
function myTeardown(){
}

function myGetChangePreference()
{
    //<fragment>
	var myTrackChangesPreference = app.trackChangesPreferences;
	with(myTrackChangesPreference)
	{
		addedBackgroundColorChoice = ChangeBackgroundColorChoices.CHANGE_BACKGROUND_USES_CHANGE_PREF_COLOR;   
		addedTextColorChoice = ChangeTextColorChoices.CHANGE_USES_CHANGE_PREF_COLOR;
		backgroundColorForAddedText = UIColors.gray;
		var myColor = backgroundColorForDeletedText;
		backgroundColorForDeletedText = UIColors.red;
		backgroundColorForMovedText = UIColors.pink;
		changeBarColor = UIColors.charcoal;
		deletedBackgroundColorChoice = ChangeBackgroundColorChoices.CHANGE_BACKGROUND_USES_CHANGE_PREF_COLOR;   
		deletedTextColorChoice =ChangeTextColorChoices.CHANGE_USES_CHANGE_PREF_COLOR;
		//ChangebarLocations.LEFT_ALIGN  (Read Only) Change bars are in the left margin.
		//ChangebarLocations.RIGHT_ALIGN  (Read Only) Change bars are in the right margin
		locationForChangeBar = ChangebarLocations.LEFT_ALIGN;  
		//ChangeMarkings.OUTLINE  (Read Only)   Outlines changed text.
		//ChangeMarkings.NONE  (Read Only) Does not mark changed text.
		//ChangeMarkings.STRIKETHROUGH  (Read Only) Uses a strikethrough to mark changed text.
		//ChangeMarkings.UNDERLINE_SINGLE  (Read Only) Underlines changed text.
		markingForAddedText = ChangeMarkings.OUTLINE;
		markingForDeletedText = ChangeMarkings.STRIKETHROUGH;
		markingForMovedText = ChangeMarkings.UNDERLINE_SINGLE;
		movedBackgroundColorChoice = ChangeBackgroundColorChoices.CHANGE_BACKGROUND_USES_CHANGE_PREF_COLOR;   
		movedTextColorChoice = ChangeTextColorChoices.CHANGE_USES_CHANGE_PREF_COLOR;
		showAddedText = true;
		shhowDeletedText = true;
		showMovedText = true;
		spellCheckDeletedtext = true;
		showChangeBar = true;
		textColorForAddedText = UIColors.blue;
		textColorForDeletedText = UIColors.yellow;
		textColorForMovedText = UIColors.green;
	}
	//</fragment>
}