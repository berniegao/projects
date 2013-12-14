Rem RemoveStyle.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to remove a paragraph style.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myInDesign = CreateObject("InDesign.Application")
	Rem Create an example document.
	Set myDocument = myInDesign.Documents.Add
	Set myPage = myInDesign.ActiveWindow.ActivePage
	Rem Create two paragraph styles and a color.
	Set myColor = myAddColor(myDocument, "Red", idColorModel.idProcess, Array(0, 100, 100, 0))
	Set myParagraphStyleA = myAddStyle(myDocument, "myParagraphStyleA", 2)
	Set myParagraphStyleB = myAddStyle(myDocument, "myParagraphStyleB", 2)
	myParagraphStyleB.FillColor = myColor
	Rem Create a text frame on page 1.
	Set myTextFrame = myPage.TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage)
	Rem Fill the text frame with example text.
	myTextFrame.Contents = idTextFrameContents.idPlaceholderText
	For myCounter = 1 To 6
		myTextFrame.ParentStory.Paragraphs.AnyItem().ApplyParagraphStyle myParagraphStyleA, True
	Next
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)	
	Set myParagraphStyleA = myDocument.ParagraphStyles.Item("myParagraphStyleA")
	Rem Delete the paragraph style myParagraphStyleA and replace with myParagraphStyleB.
	myParagraphStyleA.Delete myDocument.ParagraphStyles.Item("myParagraphStyleB")
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
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
            End If
            Err.Clear
            On Error GoTo 0
        Case 2:
            Set myStyle = myDocument.ParagraphStyles.Item(myStyleName)
            If Err.Number <> 0 Then
                Set myStyle = myDocument.ParagraphStyles.Add
                myStyle.Name = myStyleName
            End If
            Err.Clear
            On Error GoTo 0
        Case 3:
            Set myStyle = myDocument.ObjectStyles.Item(myStyleName)
            If Err.Number <> 0 Then
                Set myStyle = myDocument.ObjectStyles.Add
                myStyle.Name = myStyleName
            End If
            Err.Clear
            On Error GoTo 0
    End Select
    Set myAddStyle = myStyle
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
	myGetBounds = Array(myY1, myX1, myY2, myX2)
End Function