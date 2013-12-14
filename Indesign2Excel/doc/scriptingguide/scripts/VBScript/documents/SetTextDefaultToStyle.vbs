Rem SetTextDefaultToStyle.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to set the text default style to a specified style.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	On Error Resume Next
	Set myParagraphStyle = myDocument.ParagraphStyles.Item("myStyle")
	If Err.Number <> 0 Then
		Set myParagraphStyle = myDocument.ParagraphStyles.Add
		myParagraphStyle.Name = "myStyle"
		Err.Clear
	End If
	On Error Goto 0
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myStyle = myDocument.ParagraphStyles.Item("myStyle")
	myDocument.TextDefaults.AppliedParagraphStyle = myStyle
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function
