Rem RemoveArticle.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Show how to remove articles.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	article1 = myDocument.Articles.Add("Article1", True)
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set articles = myDocument.Articles
	Set article = articles.Item(1)
	Rem <fragment>
	article.Delete
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function