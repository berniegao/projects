//CreateArticle.jsx
//An InDesign CS6 JavaScript
//
//Shows how to retrieve articles from a document and
//how to create new articles.

main();

function main(){
	mySetup();
	mySnippet();
	myTeardown();
}

//<setup>
function mySetup(){
	var myDocument = app.documents.add();
}
//</setup>

//<snippet>
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    //Retrieve the articles for the document.
    var articles = myDocument.articles;
    //</fragment>
    
    //<fragment>
    //Create new articles.
	//The second parameter specifies the article's export status.
    var article1 = myDocument.articles.add("Article1", true);	
    var article2 = myDocument.articles.add("Article2", false);  
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>