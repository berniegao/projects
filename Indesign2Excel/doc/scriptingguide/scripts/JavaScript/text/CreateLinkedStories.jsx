//CreateLinkedStories.jsx
//An InDesign CS6 JavaScript
//
//Creates a text frame containing the parent story in an example document,
//and then creates four text frames that link the parent story.
//Modify the parent story and update the text frames that link the parent story.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    var myDocument = app.documents.add();
    //Set the measurement units to points.
    myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
    myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
    myDocument.documentPreferences.facingPages = false;
}
//</setup>

//<snippet>
function mySnippet(){        
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
    
    var geoBounds = myGetBounds(myDocument, myPage);
    var originY = geoBounds[0];
    var originX = geoBounds[1];

    var myTextFrame = myPage.textFrames.add({geometricBounds:[originY, originX, 100, 200], contents:"This is the parent story."});
    
    //<fragment>
    with (myDocument.linkedStoryOptions)
    {
        removeForcedLineBreaks = true;
        updateWhileSaving = true;
        warnOnUpdateOfEditedStory = true;
    }
    //</fragment>
     
    var childTextFrame1 = myPage.textFrames.add({geometricBounds:[105, originX, 100 - originY + 105, 200], contents:""});
    var childTextFrame2 = myPage.textFrames.add({geometricBounds:[100 - originY + 110, originX, 310 - originY * 2 , 200], contents:""});
    
    //<fragment>
    childTextFrame1.placeAndLink(myTextFrame.parentStory, false);
    //</fragment>
    childTextFrame2.placeAndLink(myTextFrame.parentStory, false);
    
    //<fragment>
    var newPage = myDocument.pages.add();
    newPage.placeAndLink(myTextFrame.parentStory, [originY, originX], myDocument.activeLayer, false);
    //</fragment>
     
    //<fragment>
    var newSpread = myDocument.spreads.add();
    newSpread.placeAndLink(myTextFrame.parentStory, [originY, originX], myDocument.activeLayer, false);        
    //</fragment>
    
    var myNewText = "\rThis is a new paragraph of example text.";
    //Update the parent story.
    myTextFrame.parentStory.insertionPoints.item(-1).contents = myNewText;
    
    var links = myDocument.links;
    var linkCount = links.count();        
    
    for (var i = 0; i < linkCount; i++)
    {
        var link = links[i];               

        //Test if it is a shared content link.
        var isSharedContentLink = link.filePath.length == 0;
        if (isSharedContentLink == true)
        {
            //Test if the link source is same with myTextFrame.
            link.editOriginal();
            var origin = app.selection[0];
            
            if (origin == myTextFrame && link.status == LinkStatus.LINK_OUT_OF_DATE)
            {
				link.update();
            }
        }
	}
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

