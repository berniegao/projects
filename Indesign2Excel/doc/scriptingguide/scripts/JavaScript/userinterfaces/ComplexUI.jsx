//ComplexUI.jsx
//An InDesign CS6 JavaScript
//
//Shows how to create a more complex dialog box.
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
	var myDialog = app.dialogs.add({name:"User Interface Example Script", canCancel:true});
	with(myDialog){
		//Add a dialog column.
		with(dialogColumns.add()){
			//Create a border panel.
			with(borderPanels.add()){
				with(dialogColumns.add()){
					//The following line shows how to set a property as you create an object.
					staticTexts.add({staticLabel:"Message:"});
				}
				with(dialogColumns.add()){
					//The following line shows how to set multiple properties as you create an object.
					var myTextEditField = textEditboxes.add({editContents:"Hello World!", minWidth:180});
				}
			}
			//Create another border panel.
			with(borderPanels.add()){
				with(dialogColumns.add()){
					staticTexts.add({staticLabel:"Point Size:"});
				}
				with(dialogColumns.add()){
					//Create a number entry field. Note that this field uses editValue
					//rather than editText (as a textEditBox would).
					var myPointSizeField = measurementEditboxes.add({editValue:72});
				}
			}
			//Create another border panel.
			with(borderPanels.add()){
				with(dialogColumns.add()){
					staticTexts.add({staticLabel:"Vertical Justification:"});
				}	
				with(dialogColumns.add()){
					//Create a pop-up menu ("dropdown") control.
					var myVerticalJustificationMenu = dropdowns.add({stringList:["Top", "Center", "Bottom"], selectedIndex:0});
				}
			}
			//Create another border panel.
			with(borderPanels.add()){
				staticTexts.add({staticLabel:"Paragraph Alignment:"});
				var myRadioButtonGroup = radiobuttonGroups.add();
				with(myRadioButtonGroup){
					var myLeftRadioButton = radiobuttonControls.add({staticLabel:"Left", checkedState:true});
					var myCenterRadioButton = radiobuttonControls.add({staticLabel:"Center"});
					var myRightRadioButton = radiobuttonControls.add({staticLabel:"Right"});
				}
			}
		}
	}
	//Display the dialog box.
	if(myDialog.show() == true){
		var myParagraphAlignment, myString, myPointSize, myVerticalJustification;
		//If the user didn’t click the Cancel button,
		//then get the values back from the dialog box.	
		//Get the example text from the text edit field.
		myString = myTextEditField.editContents 
		//Get the point size from the point size field.
		myPointSize = myPointSizeField.editValue; 
		//Get the vertical justification setting from the pop-up menu.
		if(myVerticalJustificationMenu.selectedIndex == 0){
			myVerticalJustification = VerticalJustification.topAlign;	
		}
		else if(myVerticalJustificationMenu.selectedIndex == 1){
			myVerticalJustification = VerticalJustification.centerAlign;
		}
		else{
			myVerticalJustification = VerticalJustification.bottomAlign;
		}
		//Get the paragraph alignment setting from the radiobutton group.
		if(myRadioButtonGroup.selectedButton == 0){
			myParagraphAlignment = Justification.leftAlign;
		}
		else if(myRadioButtonGroup.selectedButton == 1){
			myParagraphAlignment = Justification.centerAlign;
		}
		else{
			myParagraphAlignment = Justification.rightAlign;
		}
		myDialog.destroy();
		myMakeDocument(myString, myPointSize, myParagraphAlignment, myVerticalJustification);
	}
	else{
		myDialog.destroy()
	}
    //</fragment>
}
function myTeardown(){
}
//<fragment>
function myMakeDocument(myString, myPointSize, myParagraphAlignment, myVerticalJustification){
	//Create a new document.
	var myDocument = app.documents.add();
	with(myDocument){
		viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
		viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
		var myPage = pages[0];
		with(myPage){
			//Create a text frame.
			var myTextFrame = pages.item(0).textFrames.add();
			with(myTextFrame){
				//Set the geometric bounds of the frame using the "myGetBounds" function.
				geometricBounds = myGetBounds(myDocument, myPage);
				//Set the contents of the frame to the string you entered in the dialog box.
				contents = myString;
				//Set the alignment of the paragraph.
				texts.item(0).justification = myParagraphAlignment;
				//Set the point size of the text.
				texts.item(0).pointSize = myPointSize;
				//Set the vertical justification of the text frame.
				textFramePreferences.verticalJustification = myVerticalJustification;
			}
		}
	}
}
//</fragment>
//Utility function for getting the bounds of the "live area" of a page.
function myGetBounds(myDocument, myPage){
	with(myDocument.documentPreferences){
		var myPageHeight = pageHeight;
		var myPageWidth = pageWidth;
	}
	with(myPage.marginPreferences){
		var myTop = top;
		var myLeft = left;
		var myRight = right;
		var myBottom = bottom;
	}
	myRight = myPageWidth - myRight;
	myBottom = myPageHeight- myBottom;
	return [myTop, myLeft, myBottom, myRight];
}