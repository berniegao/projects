//AfterNew.jsx
//An InDesign CS6 JavaScript
//
//Creates an event listener that will run after a new document is created.
#targetengine "session"
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
}

function mySnippet(){
    //<fragment>
	var myEventListener = app.eventListeners.add("afterNew", myAfterNewHandler);
    //</fragment>
}
function myTeardown(){
}
//<fragment>
function myAfterNewHandler(myEvent){
	var myDocument = myEvent.parent;
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
	myCreateSlug(myDocument);
	myAddXMPData(myDocument);
	function myCreateSlug(myDocument){
		//mySlugOffset is the distance from the bottom of the page to the top of the slug.
		var mySlugOffset = 24;
		//mySlugHeight is the height of the slug text frame.
		var mySlugHeight = 72;
			with(myDocument.documentPreferences){
				documentSlugUniformSize = false;
				slugBottomOffset = mySlugOffset + mySlugHeight;
				slugTopOffset = 0;
				slugInsideOrLeftOffset = 0;
				slugRightOrOutsideOffset = 0;
			}
			for(var myCounter = 0; myCounter < myDocument.masterSpreads.length; myCounter++){
			var myMasterSpread = myDocument.masterSpreads.item(myCounter);
			for(var myMasterPageCounter = 0; myMasterPageCounter < myMasterSpread.pages.length; myMasterPageCounter ++){
				var myPage = myMasterSpread.pages.item(myMasterPageCounter);
				var mySlugBounds = myGetSlugBounds(myDocument, myPage, mySlugOffset, mySlugHeight);
				var mySlugFrame = myPage.textFrames.add({geometricBounds:mySlugBounds, contents:"Created: " + myEvent.timeStamp + "\rby: " + app.userName});
			}
		}
	}
	function myAddXMPData(myDocument){
		with(myDocument.metadataPreferences){
			author = "Adobe Systems";
			description = "This is a sample document with XMP metadata.";
		}
	}
	function myGetSlugBounds(myDocument, myPage, mySlugOffset, mySlugHeight){
		var myPageWidth = myDocument.documentPreferences.pageWidth;
		var myPageHeight = myDocument.documentPreferences.pageHeight
		//Because "right" and "left" margins become "inside" and "outside" for pages in
		//a facing pages view, we have to use a special case for left hand pages.
		if(myPage.side == PageSideOptions.leftHand){
			var myX2 = myPageWidth - myPage.marginPreferences.left;
			var myX1 = myPage.marginPreferences.right;
		}
		else{
			var myX1 = myPage.marginPreferences.left;
			var myX2 = myPageWidth - myPage.marginPreferences.right;
		}
		var myY1 = myPageHeight + mySlugOffset;
		var myY2 = myY1 + mySlugHeight;
		return [myY1, myX1, myY2, myX2];
	}
}
//</fragment>