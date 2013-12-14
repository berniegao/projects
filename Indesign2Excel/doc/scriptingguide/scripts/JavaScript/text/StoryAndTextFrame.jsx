//StoryAndTextFrame.jsx
//An InDesign CS6 JavaScript
//
//Creates a text frame in an example document.
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
	var myTextFrame = myDocument.pages.item(0).textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = [72, 72, 96, 288];
	//Fill the text frame with placeholder text.
	myTextFrame.contents = TextFrameContents.placeholderText;
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myTextFrame = myDocument.pages.item(0).textFrames.item(0);
	//Now add text beyond the end of the text frame.
	myTextFrame.insertionPoints.item(-1).contents = "\rThis is some overset text";
	alert("The last paragraph in this alert should be \"This is some overset text\". Is it?\r" + myTextFrame.contents);
	alert("The last paragraph in this alert should be \"This is some overset text\". Is it?\r" + myTextFrame.parentStory.contents);
	//</fragment>
}
function myTeardown(){
}


