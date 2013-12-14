Rem SplitStory.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Splits the selected story into separate (i.e., unthreaded) text frames.
Rem To use this script, select a text frame, then run the script.
Rem
Rem Note: Any overset text at the end of the story will be deleted.
Rem Note: Hyphenation points between text frames will not be retained.
Rem
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
	myX1 = 72
	myX2 = 144
	myY1 = myPage.MarginPreferences.Top
	myY2 = myY1 + 24
	For myCounter = 1 To 4
		Set myTextFrame = myPage.TextFrames.Add
		myTextFrame.GeometricBounds = Array(myY1, myX1, myY2, myX2)
		myTextFrame.Contents = CStr(myCounter)
		myY1 = myY1 + 36
		myY2 = myY1 + 24
	Next
	For myCounter = 1 To 3
		Set myTextFrame = myPage.TextFrames.Item(myCounter)
		myTextFrame.PreviousTextFrame = myPage.TextFrames.Item(myCounter+1)
	Next
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Rem Get the first item in the selection.
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Item(1)
	Set myStory = myTextFrame.ParentStory
	Rem If the text frame is the only text frame in the story, do nothing.
	If myStory.TextContainers.Count > 1 Then
		Rem Splitting the story is a two-step process: first, duplicate
		Rem the text frames, second, delete the original text frames.
		mySplitStory myStory
		myRemoveFrames myStory
	End If
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem <fragment>
Function mySplitStory(myStory)
	Rem Duplicate each text frame in the story.
	For myCounter = myStory.TextContainers.Count To 1 Step -1
		Set myTextFrame = myStory.TextContainers.Item(myCounter)
		myTextFrame.Duplicate
	Next
End Function
Function myRemoveFrames(myStory)
	Rem Remove each text frame in the story. Iterate backwards to avoid invalid references.
	For myCounter = myStory.TextContainers.Count To 1 Step -1
		myStory.TextContainers.Item(myCounter).Delete
	Next
End Function
Rem </fragment>

