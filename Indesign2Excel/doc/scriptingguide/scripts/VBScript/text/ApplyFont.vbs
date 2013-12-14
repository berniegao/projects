Rem ApplyFont.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Applies a font to example text.
Rem
Rem NOTE: Getting a list of font names can be very slow!
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Set myPage = myInDesign.ActiveWindow.ActivePage
	Rem Create a text frame on page 1.
	Set myTextFrame = myPage.TextFrames.Add
	Rem Set the bounds of the text frame.
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	Rem Enter text in the text frame.
	myTextFrame.Contents = idTextFrameContents.idPlaceholderText
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Item(1)
	set myStory = myTextFrame.ParentStory
	Set myStartChar = myTextFrame.Paragraphs.Item(3).Words.Item(4).Characters.Item(1)
	Set myEndChar = myTextFrame.Paragraphs.Item(5).Words.Item(-1).Characters.Item(-1)
	Set myText = myTextFrame.ParentStory.Texts.ItemByRange(myStartChar, myEndChar)
	myDisplayDialog myInDesign, myText
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem <fragment>
Function myDisplayDialog(myInDesign, myText)
   ReDim myFontNames(myInDesign.Fonts.Count - 1)
   For myCounter = 1 To myInDesign.Fonts.Count
      Set myFont = myInDesign.Fonts.Item(myCounter)
      myFontNames(myCounter - 1) = myFont.Name
   Next
   Set myDialog = myInDesign.Dialogs.Add
   myDialog.Name = "Fonts"
   With myDialog
      With .DialogColumns.Add
         With .DialogRows.Add
            With .DialogColumns.Add
               With .StaticTexts.Add
                  .staticLabel = "Font Name:"
               End With
            End With
            With .DialogColumns.Add
               Set myFontDropdown = .Dropdowns.Add
               myFontDropdown.StringList = myFontNames
               myFontDropdown.SelectedIndex = 0
            End With
         End With
      End With
   End With
   myResult = myDialog.Show
   If myResult = True Then
      myFontName = myFontNames(myFontDropdown.SelectedIndex)
      myDialog.Destroy
      Rem The font name can be either the name of the font, or the name
      Rem of the font, a tab character, and then the font style of the font.
      If TypeName(myText) = "Objects" Then
         Rem myText may be either an array of Text objects ...
         For Each element in myText
            Rem ... in which case the font must be applied to each element ...
            element.AppliedFont = myInDesign.Fonts.Item(myFontName)
         Next
      Else
         Rem ... or it may be a single Text object to which the font can be applied.
         myText.AppliedFont = myInDesign.Fonts.Item(myFontName)
      End If
   Else
      myDialog.Destroy
   End If
End Function
Function myGetFontNames(myInDesign)
    ReDim myFontNames(myInDesign.Fonts.Count - 1)
    For myCounter = 1 To myInDesign.Fonts.Count
        Set myFont = myInDesign.Fonts.Item(myCounter)
        myFontNames(myCounter - 1) = myFont.Name
    Next
    myFontNames = myGetFontNames
End Function
Rem</fragment>
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
