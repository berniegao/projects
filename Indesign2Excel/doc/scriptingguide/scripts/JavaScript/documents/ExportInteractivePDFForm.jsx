//ExportInteractivePDFForm.jsx
//An InDesign CS6 JavaScript
//
//Export an interactive PDF file with input text field and submit button
main();

function main(){
	mySetup();
	mySnippet();
	myTeardown();
}

//<setup>
function mySetup(){
    var myDocument = app.documents.add();
    myDocument.documentPreferences.pagesPerDocument = 1;
    myDocument.documentPreferences.facingPages = false;
    var myPageWidth = myDocument.documentPreferences.pageWidth;
    var myPageHeight = myDocument.documentPreferences.pageHeight;
    
    //Create color model
    myMakeColor("Red", ColorSpace.RGB, ColorModel.process, [255, 0, 0]);
    myMakeColor("Blue", ColorSpace.RGB, ColorModel.process, [0, 0, 255]);
    myMakeColor("Green", ColorSpace.RGB, ColorModel.process, [0, 255, 0]);
}
//</setup>

//<snippet>
function mySnippet(){
    var myDocument = app.documents.item(0);
    //<fragment>
    //Create a textframe as firstname label
    var myTextFrame = myDocument.pages.item(0).textFrames.add
    (
        {geometricBounds:[15, 15, 20, 35], contents:"FirstName: "}
    );    
    //Create a textbox as firstname input box
    var myTextBox = myDocument.pages.item(0).textBoxes.add
    (
        {geometricBounds:[15, 40, 20, 75], contents:SpecialCharacters.autoPageNumber}
    );
    //Create another textframe as lastname label
    var myTextFrame1 = myDocument.pages.item(0).textFrames.add
    (
        {geometricBounds:[30, 15, 25, 35], contents:"LastName: "}
    );    
    //Create another textbox as lastname input box
    var myTextBox = myDocument.pages.item(0).textBoxes.add
    (
        {geometricBounds:[30, 40, 25, 75], contents:SpecialCharacters.autoPageNumber}
    );
    
     //Create a TextFrame to introduce the following checkbox
     var myTextFrame2 = myDocument.pages.item(0).textFrames.add
     (
        {geometricBounds:[15, 80, 20, 95], contents:"Hobby: "}
     );
     //Create some CheckBoxes
     var myCheckBox = myDocument.pages.item(0).checkBoxes.add
     (
        {geometricBounds:[15, 100, 20, 105], name:"Football "}
     );
     var myTextFrame3 = myDocument.pages.item(0).textFrames.add
     (
        {geometricBounds:[15, 107, 20, 125], contents:"Football "}
     );
     var myCheckBox1 = myDocument.pages.item(0).checkBoxes.add
     (
        {geometricBounds:[15, 130, 20, 135], name:"Basketball "}
     );
     var myTextFrame4 = myDocument.pages.item(0).textFrames.add
     (
        {geometricBounds:[15, 137, 20, 160], contents:"Basketball "}
     );
     var myCheckBox2 = myDocument.pages.item(0).checkBoxes.add
     (
        {geometricBounds:[15, 165, 20, 170], name:"Pingpong "}
     );
     var myTextFrame5 = myDocument.pages.item(0).textFrames.add
     (
        {geometricBounds:[15, 172, 20, 193], contents:"Pingpong "}
     );
    
    //Create a button for submit
    var submitButton = myDocument.pages.item(0).buttons.add
    (
        {geometricBounds:[45, 15, 35, 35], name:"Submit"}
    );
    //Fill contents to the button
    var myRightArrow1 = submitButton.states.item(0).polygons.add
    (
        {fillColor:myDocument.colors.item("Green")}
    );
	myRightArrow1.paths.item(0).entirePath = [[15, 35],[35,40],[15, 45]];
    //Add the Rollover state.
	var myRolloverState1 = submitButton.states.add();
	//Add a shadow to the polygon in the Rollover state.
	var myRolloverArrow1 = myRolloverState1.polygons.add
    (
        {fillColor:myDocument.colors.item("Green")}
    );
	myRolloverArrow1.paths.item(0).entirePath = [[15, 35],[35,40],[15, 45]];
	var myFillTransparencySettings1 = myRolloverArrow1.fillTransparencySettings;
	myFillTransparencySettings1.dropShadowSettings.mode = ShadowMode.drop;
	myFillTransparencySettings1.dropShadowSettings.angle = 90;
	myFillTransparencySettings1.dropShadowSettings.xOffset = 0;
	myFillTransparencySettings1.dropShadowSettings.yOffset = 0;
	myFillTransparencySettings1.dropShadowSettings.size = 6;
	//Add a shadow to the polygon in the Click state.
	var myClickState1 = submitButton.states.add();
	var myClickArrow1 = myClickState1.polygons.add
    (
        {fillColor:myDocument.colors.item("Blue")}
    );
	myClickArrow1.paths.item(0).entirePath = [[15, 35],[35,40],[15,45]];
    //Set the behavior for the button.
    var SubmitForm = submitButton.submitFormBehaviors.add
    (
        {behaviorEvent:BehaviorEvents.mouseUp}
    );
    
     //Create a button for print
    var printButton = myDocument.pages.item(0).buttons.add
    (
        {geometricBounds:[45, 40, 35, 60], content:"Print"}
    );
    //Fill contents to the button
    var myRightArrow2 = printButton.states.item(0).polygons.add
    (
        {fillColor:myDocument.colors.item("Red")}
    );
	myRightArrow2.paths.item(0).entirePath = [[40, 35],[60,40],[40, 45]];
    //Add the Rollover state.
	var myRolloverState2 = printButton.states.add();
	//Add a shadow to the polygon in the Rollover state.
	var myRolloverArrow2 = myRolloverState2.polygons.add
    (
        {fillColor:myDocument.colors.item("Red")}
    );
	myRolloverArrow2.paths.item(0).entirePath = [[40, 35],[60,40],[40, 45]];
	var myFillTransparencySettings2 = myRolloverArrow2.fillTransparencySettings;
	myFillTransparencySettings2.dropShadowSettings.mode = ShadowMode.drop;
	myFillTransparencySettings2.dropShadowSettings.angle = 90;
	myFillTransparencySettings2.dropShadowSettings.xOffset = 0;
	myFillTransparencySettings2.dropShadowSettings.yOffset = 0;
	myFillTransparencySettings2.dropShadowSettings.size = 6;
	//Add a shadow to the polygon in the Click state.
	var myClickState2 = printButton.states.add();
	var myClickArrow2 = myClickState2.polygons.add
    (
        {fillColor:myDocument.colors.item("Blue")}
    );
	myClickArrow2.paths.item(0).entirePath = [[40, 35],[60,40],[40,45]];
    //Set the behavior for the button.
    var PrintForm = printButton.printFormBehaviors.add
    (
        {behaviorEvent:BehaviorEvents.mouseUp}
    );
    
    //Export the document to interactive PDF.
    myDocument.exportFile(ExportFormat.interactivePDF,File(Folder.desktop + "/SubmitForm.pdf"), false);
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>

function myMakeColor(myColorName, myColorSpace, myColorModel, myColorValue){
	var myColor;
	var myDocument = app.documents.item(0);
	myColor = myDocument.colors.item(myColorName);
	if(myColor.isValid == false){
		myColor = myDocument.colors.add({name:myColorName});
	}
	myColor.properties = {space:myColorSpace, model:myColorModel, colorValue:myColorValue};
	return myColor;
}