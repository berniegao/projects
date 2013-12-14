//RemoveArticle.jsx
//An InDesign CS6 JavaScript
//
//Shows how to remove articles.

main();

function main(){
	mySetup();
	mySnippet();
	myTeardown();
}

//<setup>
function mySetup(){
    var myDocument = app.documents.add();    
    var article1 = myDocument.articles.add("Article1", true);
}
//</setup>

//<snippet>
function mySnippet(){        
    var myDocument = app.documents.item(0);
    var articles = myDocument.articles;
    var article = articles.item(0);
    //<fragment>
    article.remove();    
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>