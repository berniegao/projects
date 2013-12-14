Rem Trackchange1.vbs
Rem An InCopy CS6 VBScript
Rem 
Rem Get GetTrackchange from story

Rem

main
Function main()
	Set myInDesign = CreateObject("InDesign.Application.CS6")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myStory = myDocument.Stories.Item(1)
	If(myStory.TrackChanges=true ) Then
	    Set myChange = myStory.Changes.LastItem()
	    If(myStory.Changes.Count>1) Then
	        Set myChange0 = myStory.Changes.PreviousItem(myChange)
	    End If
	End If
End Function
Function myTeardown(myInDesign)
End Function