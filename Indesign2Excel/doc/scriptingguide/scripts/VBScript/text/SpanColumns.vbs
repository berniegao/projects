Rem SpanColumns.vbs
Rem An InDesign CS6 VBScript
Rem Shows how to set Span/Split columns.

main
Function main()
    set myInDesign = CreateObject("InDesign.Application")
    mySetup myInDesign
    mySnippet myInDesign
End Function

Function mySetup(myInDesign)
    Set myDocument = myInDesign.Documents.Add
    Rem Create a text frame on page 1.
    Set myPage = myDocument.Pages.Item(1)
    Set myTextFrame = myPage.TextFrames.Add
    Rem Set the bounds of the text frame.
    With myTextFrame
        .TextFramePreferences.TextColumnCount = 3
        myBounds = myGetBounds(myDocument, myPage)
        .geometricBounds = myBounds
        Rem Fill the text frame with placeholder text.
        .Contents = idTextFrameContents.idPlaceholderText
        .GeometricBounds = Array(myBounds(0), myBounds(1), myBounds(2) * 2, myBounds(3))
    End With
End Function
Function mySnippet(myInDesign)
    Rem <fragment>
    Set myDocument = myInDesign.ActiveDocument
    Set myPage = myDocument.Pages.Item(1)
    Set myStory = myPage.TextFrames.Item(1).ParentStory

    Rem Split Column
    With myStory.Paragraphs.Item(1)
        .SpanColumnType = idSpanColumnTypeOptions.idSplitColumns
        .SpanSplitColumnCount = 2
        .SplitColumnOutsideGutter = 0
        .SplitColumnInsideGutter = 1
    End With

    Rem Span Columns
    mySpanIndex = myStory.Paragraphs.Count \ 2 + 1
    With myStory.Paragraphs.Item(mySpanIndex)
        .SpanColumnType = idSpanColumnTypeOptions.idSpanColumns
        .SpanSplitColumnCount = idSpanColumnCountOptions.idAll
    End With
    Rem </fragment>
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
    myY2 = (myPageHeight - myPage.MarginPreferences.Bottom) / 2
    myGetBounds = Array(myY1, myX1, myY2, myX2)
End Function