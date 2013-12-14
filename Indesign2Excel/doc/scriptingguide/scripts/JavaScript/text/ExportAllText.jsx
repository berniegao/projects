//ExportAllText.jsx
//An InDesign CS6 JavaScript
//
//Exports all of the text in the active document as a single
//text file. To do this, the script will create a new document,
//combine the stories in the new document using export/import,
//and then export the text from the new document.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
	var myPage = myDocument.pages.item(0);
	var myTextFrameA = myPage.textFrames.add();
	myTextFrameA.geometricBounds = [72, 72, 144, 288];
	myTextFrameA.contents = "This is story 1.";
	var myTextFrameB = myPage.textFrames.add();
	myTextFrameB.geometricBounds = [228, 72, 300, 288];
	myTextFrameB.contents = "This is story 2.";
	var myTextFrameC = myPage.textFrames.add();
	myTextFrameC.geometricBounds = [312, 72, 444, 288];
	myTextFrameC.contents = "This is story 3.";
}
function mySnippet(){
    //<fragment>
    if(app.documents.length != 0){
    	if(app.documents.item(0).stories.length != 0){
    		myExportAllText(app.documents.item(0).name);
    	}
    }
    //</fragment>
}
function myTeardown(){
}
//<fragment>
function myExportAllText(myDocumentName){
	var myStory;
	//File name for the exported text. Fill in a valid file path on your system.
	var myFileName = "/c/test.txt";
	//If you want to add a separator line between stories, set myAddSeparator to true.
	var myAddSeparator = true;
	var myNewDocument = app.documents.add();
	var myDocument = app.documents.item(myDocumentName);
	var myTextFrame = myNewDocument.pages.item(0).textFrames.add({geometricBounds:myGetBounds(myNewDocument, myNewDocument.pages.item(0))});
	var myNewStory = myTextFrame.parentStory;
	for(myCounter = 0; myCounter < myDocument.stories.length; myCounter++){
		myStory = myDocument.stories.item(myCounter);
		//Export the story as tagged text.
		myStory.exportFile(ExportFormat.taggedText, File(myFileName));
		//Import (place) the file at the end of the temporary story.
		myNewStory.insertionPoints.item(-1).place(File(myFileName));
		//If the imported text did not end with a return, enter a return
		//to keep the stories from running together.
		if(myCounter != myDocument.stories.length -1){
			if(myNewStory.characters.item(-1).contents != "\r"){
				myNewStory.insertionPoints.item(-1).contents = "\r";
			}
			if(myAddSeparator == true){
				myNewStory.insertionPoints.item(-1).contents = "----------------------------------------\r";
			}
		}
	}
	myNewStory.exportFile(ExportFormat.taggedText, File("/c/test.txt"));
	myNewDocument.close(SaveOptions.no);
}
//</fragment>
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