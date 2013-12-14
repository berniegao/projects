Rem AfterSelectionChanged.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to detect changes to the selection.
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
	Rem Add an event listener that displays the type of the objects in the selection.
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Add
	myDocument.AddEventListener "afterSelectionChanged", GetRef("myDisplaySelectionType")
	Rem </fragment>
End Function
function myTeardown(myInDesign)
End Function
Rem <fragment>
Function myDisplaySelectionType(en)
	Set myInDesign = CreateObject("InDesign.Application")
	If myInDesign.Documents.Count > 0 Then
		if myInDesign.Documents.Item(1).Selection.Count > 0 Then
			Set mySelection = myInDesign.Documents.Item(1).Selection
			myString = "Selection Contents:" & vbCr
			for myCounter = 1 To mySelection.Count
				myString = myString & TypeName(mySelection.Item(myCounter)) & vbCr
			Next
			MsgBox(myString)
		End If
	End If
End Function
Rem </fragment>