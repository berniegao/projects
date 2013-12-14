//LayerControl.jsx
//An InDesign CS6 JavaScript
//
//Shows how to work with layer visibility and printing.
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
	myDocument.layers.add({name:"Background"});
	myDocument.layers.add({name:"Language A"});
	myDocument.layers.add({name:"Language B"});
	myDocument.layers.add({name:"Language C"});
	var myPage = myDocument.pages.item(0);
	var myBounds = myGetBounds(myDocument, myPage);
	myPage.rectangles.add({geometricBounds:myBounds, fillColor:myDocument.colors.item("Black"), fillTint:20, itemLayer:myDocument.layers.item("Background")});
	var myX1 = ((myBounds[3]-myBounds[1])/2)-144;
	var myY1 = ((myBounds[2]-myBounds[0])/2)-144;
	var myX2 = ((myBounds[3]-myBounds[1])/2)+144;
	var myY2 = ((myBounds[2]-myBounds[0])/2)+144;
	for(var myCounter = 0; myCounter < 3; myCounter++){
		myTextFrame = myPage.textFrames.add({geometricBounds:[myY1, myX1, myY2, myX2]});
		switch(myCounter){
			case 0:
				myTextFrame.itemLayer = myDocument.layers.item("Language A");
				myTextFrame.contents = "Language A";
				break;
			case 1:
				myTextFrame.itemLayer = myDocument.layers.item("Language B");
				myTextFrame.contents = "Language B";
				break;
			case 2:
				myTextFrame.itemLayer = myDocument.layers.item("Language C");
				myTextFrame.contents = "Language C";
				break;
		}
	}
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	//<fragment>
	//Given a document "myDocument" containing layers named "Background,"
	//"Language A,", "Language B," and "Language C," export the "Background"
	//layer and each "Language" layer to PDF as separate PDF files...
	var myVersion, myLanguageCounter, myFileName;
	var myFolder = Folder.desktop;
	for(var myCounter = 0; myCounter < 3; myCounter ++){
		switch(myCounter){
			case 0:
				myVersion = "Language A";
				break;
			case 1:
				myVersion = "Language B";
				break;
			case 2:
				myVersion = "Language C";
				break;
		}
		for(myLanguageCounter = 0; myLanguageCounter < myDocument.layers.length; myLanguageCounter ++){
			if((myDocument.layers.item(myLanguageCounter).name == myVersion)||
			(myDocument.layers.item(myLanguageCounter).name == "Background")){
				myDocument.layers.item(myLanguageCounter).visible = true;
				myDocument.layers.item(myLanguageCounter).printable = true;
			}
			else{
				myDocument.layers.item(myLanguageCounter).visible = false;
				myDocument.layers.item(myLanguageCounter).printable = false;
			}				
		}
		myFileName = myFolder + "/" + myVersion + ".pdf";
		myDocument.exportFile(ExportFormat.pdfType, File(myFileName));	
	}
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