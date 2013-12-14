Rem Rejectchange.vbs
Rem An InCopy CS6 VBScript
Rem 
Rem reject trackchange

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
	Set myChange = myStory.Changes.Item(1)
	myChange.Reject
		
End Function
Function myTeardown(myInDesign)
End Function