Rem TableSelection.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to determine if the selection is in a table.
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
		If myInDesign.Selection.Count <> 0 Then
			Select Case TypeName(myInDesign.Selection.Item(1))
				Rem When a row, a column, or a range of cells is selected, the type returned is "Cell"
				Case "Cell"
					MsgBox ("A cell is selected.")
				Case "Table"
					MsgBox ("A table is selected.")
				Case "InsertionPoint", "Character", "Word", "TextStyleRange", "Line", "Paragraph", "TextColumn", "Text"
					If TypeName(myInDesign.Selection.Item(1).Parent) = "Cell" Then
						MsgBox ("The selection is inside a table cell.")
					End If
				Case "Rectangle", "Oval", "Polygon", "GraphicLine"
					If TypeName(myInDesign.Selection.Item(1).Parent.Parent) = "Cell" Then
						MsgBox ("The selection is inside a table cell.")
					End If
				Case "Image", "PDF", "EPS"
					If TypeName(myInDesign.Selection.Item(1).Parent.Parent.Parent) = "Cell" Then
						MsgBox ("The selection is inside a table cell.")
					End If
				Case Else
					MsgBox ("The selection is not inside a table.")
			End Select
		End If
	End If
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function