//TextColors.jsx
//An InDesign CS6 JavaScript
//
//Shows how to apply colors to the fill and stroke of text.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	var myPage = myDocument.pages.item(0);
	//Create a color.
	try{
		myColorA = myDocument.colors.item("DGC1_664a");
		//If the color does not exist, trying to get its name will generate an error.
		myName = myColorA.name;
	}
	catch (myError){
		//The color style did not exist, so create it.
		myColorA = myDocument.colors.add({name:"DGC1_664a", model:ColorModel.process, colorValue:[90, 100, 70, 0]});
	}
	//Create another color.
	try{
		myColorB = myDocument.colors.item("DGC1_664b");
		//If the color does not exist, trying to get its name will generate an error.
		myName = myColorB.name;
	}
	catch (myError){
		//The color style did not exist, so create it.
		myColorB = myDocument.colors.add({name:"DGC1_664b", model:ColorModel.process, colorValue:[70, 0, 30, 50]});
	}
	//Create a text frame on the active page.
	var myTextFrame = myPage.textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
	//Enter text in the text frame.
	myTextFrame.contents = "Text\rColor"
}
function mySnippet(){
    //<fragment>
	var myDocument = app.documents.item(0);
	var myStory = myDocument.stories.item(0);
	var myText = myStory.paragraphs.item(0);
	myText.pointSize = 72;
	myText.justification = Justification.centerAlign;
    //Apply a color to the fill of the text.
    myText.fillColor = myColorA;
    //Use the itemByRange method to apply the color to the stroke of the text.
    myText.strokeColor = myColorB;
    myText = myStory.paragraphs.item(1)
    myText.strokeWeight = 3;
    myText.pointSize = 144;
    myText.justification = Justification.centerAlign;
    myText.fillColor = myColorB;
    myText.strokeColor = myColorA;
    myText.strokeWeight = 3;
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