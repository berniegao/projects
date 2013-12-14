//ReorderArticleMembers.jsx
//An InDesign CS6 JavaScript
//
//Shows how to reorder members in an article.
main();

function main(){
	mySetup();
	mySnippet();
	myTeardown();
}

//<setup>
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	var myPage = myDocument.pages.item(0);
    
	myPage.rectangles.add({geometricBounds:[72, 72, 144, 144]});
	myPage.ovals.add({geometricBounds:[156, 72, 228, 144]});    
    myPage.rectangles.add({geometricBounds:[250, 72, 322, 144]});    
	myPage.ovals.add({geometricBounds:[334, 72, 406, 144]});	
    
    myPage.textFrames.add({geometricBounds:[418, 72, 490, 144], contents:"Text Frame"});
    
    var myArray = new Array;
    myArray.push(myPage.rectangles.item(0));
    myArray.push(myPage.ovals.item(0));
    myPage.groups.add(myArray);   
}
//</setup>

//<snippet>
function mySnippet(){
    var myDocument = app.documents.item(0);
    //Retrieve the articles for the document.
    var articles = myDocument.articles;    
    
    //Create new article.
    var article = articles.add("Article1", true);
    
    var myPage = myDocument.pages.item(0);
    
    //<fragment>
    var articleMembers = article.articleMembers;
    articleMembers.add(myPage.rectangles.item(0));
    articleMembers.add(myPage.ovals.item(0));
    articleMembers.add(myPage.textFrames.item(0));
    articleMembers.add(myPage.groups.item(0));    

    articleMembers.item(0).move(LocationOptions.AT_END);
    articleMembers.item(2).move(LocationOptions.AT_BEGINNING);
    articleMembers.item(1).move(LocationOptions.AFTER, articleMembers.item(2));
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>