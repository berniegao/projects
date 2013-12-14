//AddRemoveArticleMember.jsx
//An InDesign CS6 JavaScript
//
//Shows how to add members to an article and how to remove members
//from an article.

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
	myPage.ovals.add({geometricBounds:[72, 156, 144, 228]});
	myPage.ovals.add({geometricBounds:[156, 72, 228, 144]});
	myPage.rectangles.add({geometricBounds:[156, 156, 228, 228]});
    
    myPage.rectangles.add({geometricBounds:[250, 72, 322, 144]});
    myPage.ovals.add({geometricBounds:[250, 156, 322, 228]});
	myPage.ovals.add({geometricBounds:[334, 72, 406, 144]});
	myPage.rectangles.add({geometricBounds:[334, 157, 406, 228]});     
    
    var myArray = new Array;
    myArray.push(myPage.rectangles.item(0));
    myArray.push(myPage.ovals.item(0));
	myArray.push(myPage.rectangles.item(1));
	myArray.push(myPage.ovals.item(1));
    myPage.groups.add(myArray);   
}
//</setup>

//<snippet>
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    //Retrieve the articles for the document.
    var articles = myDocument.articles;    
    
    //Create new articles
    var article1 = articles.add("Article1", true);
    var article2 = articles.add("Article2", true);
    var article3 = articles.add("Article3", true);
    
    var myPage = myDocument.pages.item(0);
    
    var article1Members = article1.articleMembers;
    article1Members.add(myPage.rectangles.item(0));
    article1Members.add(myPage.ovals.item(0));
    
    var article2Members = article2.articleMembers;
    article2Members.add(myPage.rectangles.item(1));
    article2Members.add(myPage.ovals.item(1));
     
    var article3Members = article3.articleMembers; 
    var myGroup = myPage.groups.item(0);
    //Add group as article member.
    article3Members.add(myGroup);
    //</fragment>
    
    //<fragment>
    var articleMember = article1Members.item(0);
    articleMember.remove();
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>