//ConditionalText.jsx
//An Adobe InDesign CS6 JavaScript
//
//Shows how to create conditional text.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	var myPage = myDocument.pages.item(0);
	var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage)});
	var myStory = myTextFrame.parentStory;
	myStory.contents = "This following paragraphs are examples of conditional text:\rApplescript\rJavaScript\rVBScript\r";
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myStory = myDocument.stories.item(0);
	//<fragment>
	var myAppleScriptCondition = myDocument.conditions.add();
	myAppleScriptCondition.name = "AppleScript";
	myAppleScriptCondition.indicatorColor = UIColors.red;
	myAppleScriptCondition.visible=true;
	myAppleScriptCondition.indicatorMethod = ConditionIndicatorMethod.useHighlight;
	myStory.paragraphs.item(1).applyConditions([myAppleScriptCondition]);
	var myJavaScriptCondition = myDocument.conditions.add();
	myJavaScriptCondition.name = "JavaScript";
	myJavaScriptCondition.indicatorColor = UIColors.blue;
	myJavaScriptCondition.visible=true;
	myJavaScriptCondition.indicatorMethod = ConditionIndicatorMethod.useHighlight;
	myStory.paragraphs.item(2).applyConditions([myJavaScriptCondition]);
	var myVBScriptCondition = myDocument.conditions.add();
	myVBScriptCondition.name = "VBScript";
	myVBScriptCondition.indicatorColor = UIColors.green;
	myVBScriptCondition.visible=true;
	myVBScriptCondition.indicatorMethod = ConditionIndicatorMethod.useHighlight;
	myStory.paragraphs.item(3).applyConditions([myVBScriptCondition]);
	var myMacOSConditionSet = myDocument.conditionSets.add();
	myMacOSConditionSet.name = "MacOSCondition";
	myMacOSConditionSet.setConditions = [[myAppleScriptCondition, true], [myJavaScriptCondition, true], [myVBScriptCondition, false]];
	var myWindowsConditionSet = myDocument.conditionSets.add();
	myWindowsConditionSet.name = "WindowsCondition";
	myWindowsConditionSet.setConditions = [[myVBScriptCondition, true], [myJavaScriptCondition, true], [myAppleScriptCondition, false]];
	myDocument.conditionalTextPreferences.activeConditionSet = myMacOSConditionSet;
	//</fragment>
}
function myTeardown(){
}
function myGetBounds(myDocument, myPage){
	var myPageWidth = myDocument.documentPreferences.pageWidth;
	var myPageHeight = myDocument.documentPreferences.pageHeight
	if(myPage.side == PageSideOptions.leftHand){
		var myX2 = myPage.marginPreferences.left;
		var myX1 = myPage.marginPreferences.right;
	}
	else{
		var myX1 = myPage.marginPreferences.left;
		var myX2 = myPage.marginPreferences.right;
	}
	var myY1 = myPage.marginPreferences.top;
	var myX2 = myPageWidth - myX2;
	var myY2 = myPageHeight - myPage.marginPreferences.bottom;
	return [myY1, myX1, myY2, myX2];
}