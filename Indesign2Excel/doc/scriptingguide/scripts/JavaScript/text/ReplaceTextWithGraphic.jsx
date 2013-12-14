//ReplaceTextWithGraphic.jsx
//An InDesign CS6 JavaScript
//
//Replaces each instance of a string with a specified graphic file.
main();
function main(){
		mySetup();
		mySnippet();
		myTeardown();
}
function mySetup(){
	//Create an example document.
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	//Create a text frame on page 1.
	var myTextFrame = myDocument.pages.item(0).textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myDocument.pages.item(0));
	//Fill the text frame with placeholder text.
	var myString = "This is an example paragraph.\r<graphic: \/c\/test.tif>\rThis is a paragraph following an inline graphic.\r<graphic: \/c\/test.tif>\rThis is another paragraph.";
	myTextFrame.contents = myString;
}
function mySnippet(){
	//<fragment>
	var myInlineGraphic, myX1, myY1, myX2, myY2, myFoundItem;
	var myRegExp = "(?i)<graphic\\:\\s?(.*)\\s?>"
	var myDocument = app.documents.item(0);
	//Clear the grep find/change preferences.
	app.findGrepPreferences = NothingEnum.nothing;
	app.changeGrepPreferences = NothingEnum.nothing;
	app.findGrepPreferences.findWhat = myRegExp;
	//Search the document.
	var myFoundItems = myDocument.findGrep(true);
	//Clear the find/change preferences after the search.
	app.findGrepPreferences = NothingEnum.nothing;
	app.changeGrepPreferences = NothingEnum.nothing;
	if(myFoundItems.length != 0){
		for(var myCounter = 0; myCounter < myFoundItems.length; myCounter ++){
			//A potential problem comes up here: what if the graphic is too big 
			//to fit on the page? What if the text is overset? There are no 
			//foolproof solutions that can handle all of the possible problems 
			//that can arise; your best bet is to adjust your scripts to deal
			//with the specific layouts of specific documents rather than to try to
			//create a single function that can handle all situations for all
			//possible documents.
			//
			//In this case, we simply make the frame a set size and place the graphic
			//into the frame, then fit the graphic to the frame proportionally, and
			//then fit the frame to the resized graphic.
			myFoundItem = myFoundItems[myCounter];
			myX1 = myFoundItem.characters.item(0).horizontalOffset;
			myY1 = myFoundItem.characters.item(0).baseline;
			myX2 = myX1 + 72;
			myY2 = myY1 + 72;
			myFileName = myFoundItem.contents.replace(/<graphic\:\s(.*)\s?>/i, "$1");
			myFrame = myFoundItem.insertionPoints.item(0).rectangles.add();
			//Recompose the text after adding the inline frame.
			myFoundItem.parent.recompose();
			myFrame.geometricBounds = [myY1, myX1, myY2, myX2];
			try{
				myInlineGraphic = myFrame.place(File(myFileName))[0];
				myFrame.fit(FitOptions.proportionally);
				myFrame.fit(FitOptions.frameToContent);
			} catch(myError){}
		}
	}
	//Now replace the tags.
	app.findGrepPreferences.findWhat = myRegExp;
	app.changeGrepPreferences.changeTo = "";
	myDocument.changeGrep();
	//Clear the find/change preferences after the search.
	app.findGrepPreferences = NothingEnum.nothing;
	app.changeGrepPreferences = NothingEnum.nothing;
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