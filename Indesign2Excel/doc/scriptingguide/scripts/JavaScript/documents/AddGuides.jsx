//AddGuides.jsx
//An InDesign CS6 JavaScript
//
//Shows how to add guide slice for guide based layout policy.

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
    //Use guide slicing to resize objects on the page as it resizes.
    myPage.layoutRule = LayoutRuleOptions.GUIDE_BASED; 
	  //Create a text frame on the first page.
    var myTextFrame = myPage.textFrames.add({
            geometricBounds:myGetBounds(doc, myPage), 
            contents:"This is guide-based LayoutRule sample doc."
            });
    var myItem = myPage.rectangles.add({geometricBounds:[20,20,70,70]});
    
    with(doc)
    {
        //add guide slice
        guides.add({
              guideType:GuideTypeOptions.LIQUID, 
              location:20, 
              orientation:HorizontalOrVertical.horizontal
            });
    }
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