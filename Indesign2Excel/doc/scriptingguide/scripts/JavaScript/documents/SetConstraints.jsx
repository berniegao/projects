//SetConstraints.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set constraints for objectbased layout policy.

main();

function main(){
	mySetup();
	mySnippet();
	myTeardown();
}

//<setup>
function mySetup(){	
}
//</setup>


//<snippet>
function mySnippet(){
    //<fragment>
    var doc = app.documents.add();
	var myPage = doc.pages.item(0);
    //Reposition and resize objects on the page as it resizes.
    myPage.layoutRule = LayoutRuleOptions.OBJECT_BASED ;
	//Create a text frame on the first page.
    var myTextFrame = myPage.textFrames.add({
                    geometricBounds:myGetBounds(doc, myPage), 
                    contents:"This is object-based layoutRule sample doc."
                  });
    //Create a rectangle
    var myItem = myPage.rectangles.add({geometricBounds:[20,20,70,70]});
    //set constrains
    myItem.verticalLayoutConstraints = 
            [DimensionsConstraints.flexibleDimension, 
             DimensionsConstraints.flexibleDimension, 
             DimensionsConstraints.flexibleDimension];
    myItem.horizontalLayoutConstraints = 
            [DimensionsConstraints.fixedDimension, 
             DimensionsConstraints.flexibleDimension, 
             DimensionsConstraints.flexibleDimension];
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>
function myGetBounds(myDocument, myPage){
	var myPageWidth = myDocument.documentPreferences.pageWidth;
	var myPageHeight = myDocument.documentPreferences.pageHeight
	if(myPage.side == PageSideOptions.leftHand){
		var myX2 = myPage.marginPreferences.left;
		var myX1 = myPage.marginPreferences.right;
	}
	else{
		var myX1 = myPage.marginPreferences.left;
		var myX2 = myPage.marginPreferences.right;
	}
	var myY1 = myPage.marginPreferences.top;
	var myX2 = myPageWidth - myX2;
	var myY2 = myPageHeight - myPage.marginPreferences.bottom;
	return [myY1, myX1, myY2, myX2];
}