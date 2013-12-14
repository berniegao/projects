//AddText.jsx
//An InDesign CS6 JavaScript
//
//Creates a text frame in an example document,
//enters text in the text frame, and then adds
//text at the end of the text frame.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
    var myPage = myDocument.pages.item(0);
    //Set the measurement units to points.
    myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
    myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
    //Create a text frame on the first page.
    var myTextFrame = myPage.textFrames.add({geometricBounds:myGetBounds(myDocument, myPage), contents:"This is some example text."});
}
function mySnippet(){
    var myDocument = app.documents.item(0);
	var myTextFrame = myDocument.pages.item(0).textFrames.item(0);
    //<fragment>
    //Add text at the end of the text in the text frame.
    //To do this, we'll use the last insertion point in the story.
    //("\r" is a return character.)
    var myNewText = "\rThis is a new paragraph of example text.";
    myTextFrame.parentStory.insertionPoints.item(-1).contents = myNewText;
    //</fragment>
}
function myTeardown(){
}
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