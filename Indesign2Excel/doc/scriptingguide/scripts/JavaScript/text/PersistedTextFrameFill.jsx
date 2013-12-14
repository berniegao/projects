//PersistedTextFrameFill.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set rules on a text frame to determine how it grows when the user inputs text. 

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
	var myTextFrame = myDocument.pages.item(0).textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = [72, 72, 96, 288];
	//Fill the text frame with placeholder text.
	myTextFrame.contents = TextFrameContents.placeholderText;
    var myTextFrame2 = myDocument.pages.item(0).textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame2.geometricBounds = [156, 72, 180, 288];
	//Fill the text frame with placeholder text.
	myTextFrame2.contents = TextFrameContents.placeholderText;
    var myTextFrame3 = myDocument.pages.item(0).textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame3.geometricBounds = [230, 72, 254, 288];
	//Fill the text frame with placeholder text.
	myTextFrame3.contents = TextFrameContents.placeholderText;
    var myTextFrame4 = myDocument.pages.item(0).textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame4.geometricBounds = [304, 72, 328, 288];
	//Fill the text frame with placeholder text.
	myTextFrame4.contents = TextFrameContents.placeholderText;
}
//</setup>

//<snippet>
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myTextFrame = myDocument.pages.item(0).textFrames.item(3);
	//Now add text at the end of the text frame.
	myTextFrame.insertionPoints.item(-1).contents = "\rThis is some overset text";
	alert("The last paragraph in this alert should be \"This is some overset text\". Is it?\r" 
            + myTextFrame.contents);
	alert("The last paragraph in this alert should be \"This is some overset text\". Is it?\r" 
            + myTextFrame.parentStory.contents);   
    var myTextFrame2 = myDocument.pages.item(0).textFrames.item(2);
    //Set auto size dimension of the text frame
    with(myTextFrame2.textFramePreferences)
    {
        autoSizingDimension=AutoSizingDimension.HEIGHT_AND_WIDTH_PROPORTIONALLY;
    }
	//Now add text at the end of the text frame.
	myTextFrame2.insertionPoints.item(-1).contents = "\rThis is some overset text";   
    var myTextFrame3 = myDocument.pages.item(0).textFrames.item(1);
    //Set  auto size dimension of the text frame 
    //useMinimumHeightForAutoSizing and useNoLineBreaksForAutoSizing
    with(myTextFrame3.textFramePreferences)
    {
        autoSizingDimension=AutoSizingDimension.HEIGHT_ONLY;
        useMinimumHeightForAutoSizing=true
        useNoLineBreaksForAutoSizing=true
    }
	//Now add text at the end of the text frame.
	myTextFrame3.insertionPoints.item(-1).contents = "\rThis is some overset text";   
    var myTextFrame4 = myDocument.pages.item(0).textFrames.item(0);
    //Set  auto size dimension of the text frame and autoSizingReferencePoint
    with(myTextFrame4.textFramePreferences)
    {
        autoSizingDimension=AutoSizingDimension.WIDTH_ONLY;
        autoSizingReferencePoint=AutoSizingReferencePoint.TOP_LEFT_POSITION;
    }
	//Now add text at the end of the text frame.
	myTextFrame4.insertionPoints.item(-1).contents = "\rThis is some overset text";
	//</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>