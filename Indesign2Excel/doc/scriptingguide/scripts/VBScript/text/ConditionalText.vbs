Rem ConditionalText.vbs
Rem An Adobe InDesign CS6 VBScript
Rem 
Rem Shows how to create conditional text.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	Set myStory = myTextFrame.ParentStory
	myStory.Contents = "This following paragraphs are examples of conditional text:" & vbCr & "Applescript" & vbCr & "JavaScript" & vbCr & "VBScript" & vbCr
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myStory = myDocument.Stories.Item(1)
	Rem <fragment>
	Set myAppleScriptCondition = myDocument.Conditions.Add
	myAppleScriptCondition.Name = "AppleScript"
	myAppleScriptCondition.IndicatorColor = idUIColors.idRed
	myAppleScriptCondition.Visible = True
	myAppleScriptCondition.IndicatorMethod = idConditionIndicatorMethod.idUseHighlight
	myStory.paragraphs.Item(2).ApplyConditions Array(myAppleScriptCondition)
	Set myJavaScriptCondition = myDocument.Conditions.Add
	myJavaScriptCondition.Name = "JavaScript"
	myJavaScriptCondition.IndicatorColor = idUIColors.idBlue
	myJavaScriptCondition.Visible = True
	myJavaScriptCondition.IndicatorMethod = idConditionIndicatorMethod.idUseHighlight
	myStory.paragraphs.Item(3).ApplyConditions Array(myJavaScriptCondition)
	Set myVBScriptCondition = myDocument.Conditions.Add
	myVBScriptCondition.Name = "VBScript"
	myVBScriptCondition.IndicatorColor = idUIColors.idGreen
	myVBScriptCondition.Visible = True
	myVBScriptCondition.IndicatorMethod = idConditionIndicatorMethod.idUseHighlight
	myStory.paragraphs.Item(4).ApplyConditions Array(myVBScriptCondition)
	Set myMacOSConditionSet = myDocument.ConditionSets.Add
	myMacOSConditionSet.Name = "MacOSCondition"
	myMacOSConditionSet.SetConditions = Array(Array(myAppleScriptCondition, True), Array(myJavaScriptCondition, True), Array(myVBScriptCondition, False))
	set myWindowsConditionSet = myDocument.ConditionSets.Add
	myWindowsConditionSet.name = "WindowsCondition"
	myWindowsConditionSet.SetConditions = Array(Array(myAppleScriptCondition, False), Array(myJavaScriptCondition, True), Array(myVBScriptCondition, True))
	myDocument.ConditionalTextPreferences.ActiveConditionSet = myWindowsConditionSet
	Rem </fragment>
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
	myGetBounds =  Array(myY1, myX1, myY2, myX2)
End Function