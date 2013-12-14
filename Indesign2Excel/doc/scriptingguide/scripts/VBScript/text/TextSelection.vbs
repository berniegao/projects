Rem TextSelection.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to determine whether the current selection is a text selection.
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
	Set myInDesign = CreateObject("InDesign.Application")
	If myInDesign.Documents.Count <> 0 Then
		Rem If the selection contains more than one item, the selection
		Rem is not text selected with the Type tool.
		If myInDesign.Selection.Count = 1 Then
			Select Case TypeName(myInDesign.Selection.Item(1))
				Case "InsertionPoint", "Character", "Word", "TextStyleRange", "Line", "Paragraph", "TextColumn", "Text"
					MsgBox "The selection is a text object."
					Rem A real script would now act on the text object
					Rem or pass it on to a function.
				Case "TextFrame"
					Rem In addition to checking for the above text objects, we can
					Rem also continue if the selection is a text frame selected with
					Rem the Selection tool or the Direct Selection tool.
					Rem If the selection is a text frame, you get a reference to the
					Rem text in the text frame and then pass it along to a function.
					Rem Set myText = myInDesign.Selection.Item(1).Texts.Item(1)
					MsgBox "The selected object is a text frame."
				Case Else
					MsgBox "The selected object is not a text object. Select some text and try again."
			End Select
		Else
			MsgBox "Please select some text and try again."
		End If
	Else
		MsgBox "No documents are open. Please open a document, select some text, and try again."
	End If
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function