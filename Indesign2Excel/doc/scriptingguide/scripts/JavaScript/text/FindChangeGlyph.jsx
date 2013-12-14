//FindChangeGlyph.jsx
//An InDesign CS6 JavaScript
//
//Demonstrates the find glyph and change glyph features.
main();
function main(){
	mySetup();
	mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
    var myPage = myDocument.pages.item(0);
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	//Create a text frame on page 1.
	var myTextFrame = myPage.textFrames.add();
	//Set the bounds of the text frame.
	myTextFrame.geometricBounds = myGetBounds(myDocument, myPage);
	//Fill the text frame with placeholder text.
	var myString = "This is an example paragraph containing a specific glyph: \u25A0.\rThis is a paragraph containing a specific glyph:\u25A0.\rThis is another paragraph containing a specific glyph:\u25A0.";
	myTextFrame.contents = myString;
}
function mySnippet(){
	//<fragment>
	//Clear glyph search preferences.
	app.findGlyphPreferences = NothingEnum.nothing;
	app.changeGlyphPreferences = NothingEnum.nothing;
	var myDocument = app.documents.item(0);
	//You must provide a font that is used in the document for the
	//appliedFont property of the findGlyphPreferences object.
	app.findGlyphPreferences.appliedFont = app.fonts.itemByName("Minion Pro	Regular");
	//Provide the glyph ID, not the glyph Unicode value.
	app.findGlyphPreferences.glyphID = 374;
	//The appliedFont of the changeGlyphPreferences object can be
	//any font available to the application.
	app.changeGlyphPreferences.appliedFont = app.fonts.itemByName("Times New Roman	Bold");
	app.changeGlyphPreferences.glyphID = 85;
	myDocument.changeGlyph(false);
	//Clear glyph search preferences.
	app.findGlyphPreferences = NothingEnum.nothing;
	app.changeGlyphPreferences = NothingEnum.nothing;
	//</fragment>
}
function myTeardown() {
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