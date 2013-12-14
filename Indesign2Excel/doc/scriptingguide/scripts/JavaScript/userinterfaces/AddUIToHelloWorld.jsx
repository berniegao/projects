//HelloWorldUI.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create a simple dialog box and use the
//dialog box settings in a script.
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
	var myDialog = app.dialogs.add({name:"Simple User Interface Example Script",canCancel:true});
	with(myDialog){
		//Add a dialog column.
		with(dialogColumns.add()){
			//Create a text edit field.
			var myTextEditField = textEditboxes.add({editContents:"Hello World!", minWidth:180});
			//Create a number (real) entry field.
			var myPointSizeField = measurementEditboxes.add({editValue:72, editUnits:MeasurementUnits.points});
		}
	}
	//Display the dialog box.
	var myResult = myDialog.show();
	if(myResult == true){
		//Get the values from the dialog box controls.
		var myString = myTextEditField.editContents;
		var myPointSize = myPointSizeField.editValue;
		//Remove the dialog box from memory.
		myDialog.destroy();
		myMakeDocument(myString, myPointSize);
	}
	else{
		myDialog.destroy();
	}
	//</fragment>
}
function myTeardown(){
}
//<fragment>
function myMakeDocument(myString, myPointSize){
	//Create a new document.
	var myDocument = app.documents.add()
	with(myDocument){
		//Create a text frame.
		var myTextFrame = pages.item(0).textFrames.add();
		//Resize the text frame to the "live" area of the page (using the function "myGetBounds").
		var myBounds = myGetBounds(myDocument, myDocument.pages.item(0));
		myTextFrame.geometricBounds=myBounds;
		//Enter the text from the dialog box in the text frame.
		myTextFrame.contents=myString;
		//Set the size of the text to the size you entered in the dialog box.
		myTextFrame.texts.item(0).pointSize = myPointSize;
	}
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