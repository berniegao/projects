Rem CreateStyles.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to create a paragraph style and a character style.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Rem Create a text frame on page 1.
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage)
	Rem Fill the text frame with placeholder text.
	myTextFrame.Contents = "Normal text. Text with a character style applied to it. More normal text."
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Item(1)
	Rem Create a color for use by one of the paragraph styles we'll create.
	Set myColor = myAddColor(myDocument, "Red", idColorModel.idProcess, Array(0, 100, 100, 0))
	Rem Create a character style named "myCharacterStyle" if
	Rem no style by that name already exists.
	Set myCharacterStyle = myAddStyle(myDocument, "myCharacterStyle", 1)
	Rem At this point, the variable myCharacterStyle contains a reference to a character
	Rem style object, which you can now use to specify formatting.
	myCharacterStyle.FillColor = myColor
	Rem Create a paragraph style named "myParagraphStyle" if
	Rem no style by that name already exists.
	Set myParagraphStyle = myAddStyle(myDocument, "myParagraphStyle", 2)
	Rem At this point, the variable myParagraphStyle contains a reference to a paragraph
	Rem style object, which you can now use to specify formatting.
	myTextFrame.ParentStory.Texts.Item(1).ApplyParagraphStyle myParagraphStyle, True
	Set myStartCharacter = myTextFrame.ParentStory.Characters.Item(14)
	Set myEndCharacter = myTextFrame.ParentStory.Characters.Item(55)
	Set myText = myTextFrame.ParentStory.Texts.ItemByRange(myStartCharacter, myEndCharacter)
	myText.Item(1).ApplyCharacterStyle myCharacterStyle, True
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem <fragment>
Function myAddColor(myDocument, myColorName, myColorModel, myColorValue)
    On Error Resume Next
    Set myColor = myDocument.Colors.Item(myColorName)
    If Err.Number <> 0 Then
        Set myColor = myDocument.Colors.Add
        myColor.Name = myColorName
    End If
    Err.Clear
    On Error GoTo 0
    myColor.Model = myColorModel
    myColor.ColorValue = myColorValue
    Set myAddColor = myColor
End Function
Function myAddStyle(myDocument, myStyleName, myStyleType)
    On Error Resume Next
    Select Case myStyleType
        Case 1:
            Set myStyle = myDocument.CharacterStyles.Item(myStyleName)
            If Err.Number <> 0 Then
                Set myStyle = myDocument.CharacterStyles.Add
                myStyle.Name = myStyleName
	            Err.Clear
            End If
            On Error GoTo 0
        Case 2:
            Set myStyle = myDocument.ParagraphStyles.Item(myStyleName)
            If Err.Number <> 0 Then
                Set myStyle = myDocument.ParagraphStyles.Add
                myStyle.Name = myStyleName
	            Err.Clear
            End If
            On Error GoTo 0
    End Select
    Set myAddStyle = myStyle
End Function
Rem </fragment>
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