Rem CreateArticle.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Show how to retrieve articles from a document and
Rem how to create new articles.
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
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set articles = myDocument.Articles
	Rem </fragment>
	
	Rem <fragment>
	Set article1 = myDocument.Articles.Add("Article1", True)
	Rem The second parameter specifies the article's export status.
	Set article2 = myDocument.Articles.Add("Article2", False)	
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function