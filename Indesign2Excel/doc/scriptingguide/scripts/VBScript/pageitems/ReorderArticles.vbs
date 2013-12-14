Rem ReorderArticles.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Show how to reorder articles.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Rem <fragment>
	Set article1 = myDocument.Articles.Add("Article1", True)
	Set article2 = myDocument.Articles.Add("Article2", True)
	Set article3 = myDocument.Articles.Add("Article3", True)
	Set article4 = myDocument.Articles.Add("Article4", True)
	
	Rem Reverse the order of articles.
	Rem Move article4 to the first.
	article4.Move idLocationOptions.idAtBeginning
	Rem Move article1 to the end.
	article1.Move idLocationOptions.idAtEnd
	Rem Move article3 to the second place.
	article3.Move idLocationOptions.idAfter, article4
	Rem Move article2 to the third place.
	article2.Move idLocationOptions.idBefore, article1
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function