//LiquidLayout.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set layout policy for document.

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
    //Set layout policy to LayoutPolicyOptions.OBJECT_BASED
    //Reposition and resize objects on the page as it resizes.
    myPage.layoutRule = LayoutRuleOptions.OBJECT_BASED ;
	  //Create a text frame on the first page.
    var myTextFrame = myPage.textFrames.add({
                geometricBounds:myGetBounds(doc, myPage), 
                contents:"This is object-based layoutpolicy sample doc."
              });
    //Create a rectangle
    var myItem = myPage.rectangles.add({geometricBounds:[20,20,70,70]});
    myItem.verticalLayoutConstraints = 
            [DimensionsConstraints.flexibleDimension, 
             DimensionsConstraints.flexibleDimension, 
             DimensionsConstraints.flexibleDimension];
    myItem.horizontalLayoutConstraints = 
            [DimensionsConstraints.fixedDimension, 
             DimensionsConstraints.flexibleDimension, 
             DimensionsConstraints.flexibleDimension];

    var doc2 = app.documents.add();
    var myPage2 = doc2.pages.item(0);
    //Set layout policy to LayoutPolicyOptions.SCALE
    //Scale objects on the page as it resizes. 
    myPage2.layoutRule = LayoutRuleOptions.SCALE;  
	  //Create a text frame on the first page.
    var myTextFrame2 = myPage2.textFrames.add({
              geometricBounds:myGetBounds(doc2, myPage2), 
              contents:"This is scale layoutpolicy sample doc."
            });
    var myItem2 = myPage2.rectangles.add({geometricBounds:[20,20,70,70]});
    
    var doc3 = app.documents.add();
    var myPage3 = doc3.pages.item(0);
    //Set layout policy to LayoutPolicyOptions.RECENTER
    //Recenter objects on the page as it resizes.
    myPage3.layoutRule = LayoutRuleOptions.RECENTER; 
	  //Create a text frame on the first page.
    var myTextFrame = myPage3.textFrames.add({
              geometricBounds:myGetBounds(doc3, myPage3), 
              contents:"This is recenter layoutpolicy sample doc."
            });
    var myItem = myPage3.rectangles.add({geometricBounds:[20,20,70,70]});
     
    var doc4 = app.documents.add();
    var myPage4 = doc4.pages.item(0);
    //Set layout policy to LayoutPolicyOptions.GUIDE_BASED
    //Use guide slicing to resize objects on the page as it resizes.
    myPage4.layoutRule = LayoutRuleOptions.GUIDE_BASED; 
    //Create a text frame on the first page.
    var myTextFrame4 = myPage4.textFrames.add({
             geometricBounds:myGetBounds(doc4, myPage4), 
             contents:"This is guide-based layoutpolicy sample doc."
           });
    var myItem4 = myPage4.rectangles.add({geometricBounds:[20,20,70,70]});
    with(doc4)
    {
        guides.add({
            guideType:GuideTypeOptions.LIQUID,
            location:40, 
            orientation:HorizontalOrVertical.horizontal});
    }

    var doc5 = app.documents.add();
    var myPage5 = doc5.pages.item(0);
    //Set layout policy to LayoutPolicyOptions.USE_MASTER
    //Use layout policy from the page's applied master page.
    myPage5.layoutRule = LayoutRuleOptions.USE_MASTER; 
    //Create a text frame on the first page.
    var myTextFrame5 = myPage5.textFrames.add(
            {geometricBounds:myGetBounds(doc5, myPage5), 
            contents:"This is master page layoutpolicy sample doc."
          });
    var myItem5 = myPage5.rectangles.add({geometricBounds:[20,20,70,70]});
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