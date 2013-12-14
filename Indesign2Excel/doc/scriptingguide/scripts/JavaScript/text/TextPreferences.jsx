//TextPreferences.jsx
//An InDesign CS6 JavaScript
//
//Sets text preferences.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
}
function mySnippet(){
	//<fragment>
	//The following sets the text preferences for the application; to set the
	//text preferences for the front-most document, replace "app.textPreferences" with
	//"app.documents.item(0).textPreferences"
	with(app.textPreferences){
		abutTextToTextWrap = true;
		//baseline shift key increment can range from .001 to 200 points.
		baselineShiftKeyIncrement = 1;
		highlightCustomSpacing = false;
		highlightHjViolations = true;
		highlightKeeps = true;
		highlightSubstitutedFonts = true;
		highlightSubstitutedGlyphs = true;
		justifyTextWraps = true;
		//kerning key increment value is 1/1000 of an em.
		kerningKeyIncrement = 10;
		//leading key increment value can range from .001 to 200 points.
		leadingKeyIncrement	= 1;
		linkTextFilesWhenImporting = false;
		scalingAdjustsText = false;
		showInvisibles = true;
		smallCap = 60;
		subscriptPosition = 30;
		subscriptSize = 60;
		superscriptPosition = 30;
		superscriptSize = 60;
		typographersQuotes = false;
		useOpticalSize = false;
		useParagraphLeading = false;
		zOrderTextWrap = false;	
	}
	//Text editing preferences are application-wide.
	with(app.textEditingPreferences){
		allowDragAndDropTextInStory = true;
		dragAndDropTextInLayout = true;
		smartCutAndPaste = true;
		tripleClickSelectsLine = false;
	}
	//</fragment>
}
function myTeardown(){
}
