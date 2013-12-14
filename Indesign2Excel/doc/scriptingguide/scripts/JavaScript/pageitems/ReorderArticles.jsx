//ReorderArticles.jsx
//An InDesign CS6 JavaScript
//
//Shows how to reorder articles.
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
    var myDocument = app.documents.item(0);    
    var articles = myDocument.articles;
	
    //<fragment>
    var article1 = articles.add("Article1", true);
    var article2 = articles.add("Article2", true);
    var article3 = articles.add("Article3", true);
    var article4 = articles.add("Article4", true);
    //Reverse the order of articles.
    //Move article4 to the first.
    article4.move(LocationOptions.AT_BEGINNING);
    //Move article1 to the end.
    article1.move(LocationOptions.AT_END);
    //Move article3 to the second place.
    article3.move(LocationOptions.AFTER, article4);
    //Move article2 to the third place.
    article2.move(LocationOptions.BEFORE, article1);
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>