Rem BreakFrame.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Removes the selected text frame (or text frames) from the
Rem story containing the text frame and removes the text contained
Rem by the text frame from the story.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	ReDim myObjectList(0)
	Rem Script does nothing if no documents are open or if no objects are selected.
	If myInDesign.Documents.Count <> 0 Then
		If myInDesign.Selection.Count <> 0 Then
			Rem Process the objects in the selection to create a list of
			Rem qualifying objects (text frames).
			For myCounter = 1 To myInDesign.Selection.Count
				Select Case TypeName(myInDesign.Selection.Item(myCounter))
					Case "TextFrame":
						If Not (IsEmpty(myObjectList(0))) Then
							ReDim Preserve myObjectList(UBound(myObjectList) + 1)
						End If
						Set myObjectList(UBound(myObjectList)) = myInDesign.Selection.Item(myCounter)
					Case "InsertionPoint", "Character", "Word", "TextStyleRange", "Line", "Paragraph", "TextColumn", "Text":
						If Not (IsEmpty(myObjectList(0))) Then
							ReDim Preserve myObjectList(UBound(myObjectList) + 1)
						End If
						Set myObjectList(UBound(myObjectList)) = myInDesign.Selection.Item(myCounter).ParentTextFrames.Item(1)
				End Select
			Next
			Rem If the object list is not empty, pass it on to the function
			Rem that does the real work.
			If Not (IsEmpty(myObjectList(0))) Then
				myBreakFrames myObjectList
			End If
		End If
	End If
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem <fragment>
Function myBreakFrames(myObjectList)
    For myCounter = UBound(myObjectList) To 0 Step -1
        myBreakOutFrame myObjectList(myCounter)
    Next
End Function
Function myBreakFrame(myTextFrame)
    myProcessFrame = vbYes
    If (TypeName(myTextFrame.NextTextFrame) <> "Nothing") Or (TypeName(myTextFrame.PreviousTextFrame) <> "Nothing") Then
        If myTextFrame.ParentStory.Tables.Count <> 0 Then
            myProcessFrame = MsgBox("This story contains tables. If the text frame you are trying to remove from the story contains a table, the results might not be what you expect. Do you want to continue?", vbYesNo)
        End If
        If myProcessFrame = vbYes Then
            Set myNewFrame = myTextFrame.Duplicate
            If myTextFrame.Contents <> "" Then
                myTextFrame.Texts.Item(1).Delete
            End If
            myTextFrame.Delete
        End If
    End If
End Function
Rem </fragment>