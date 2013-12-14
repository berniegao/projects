//PlaceIntoFrame.jsx
//An InDesign CS6 JavaScript
//
//Create a frame and place XML within it.
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
	var myRootXMLElement = myDocument.xmlElements.item(0);
	var myXMLTag = myDocument.xmlTags.add("xml_element");
	var myXMLElementA = myRootXMLElement.xmlElements.add(myXMLTag);
	myXMLElementA.contents = "This is a paragraph in an XML story.";
	var myXMLElementB = myRootXMLElement.xmlElements.add(myXMLTag);
	myXMLElementB.contents = "This is another paragraph in an XML story.";
	var myXMLElementC = myRootXMLElement.xmlElements.add(myXMLTag);
	myXMLElementC.contents = "This is the third paragraph in an example XML story.";
	var myXMLElementD = myRootXMLElement.xmlElements.add(myXMLTag);
	myXMLElementD.contents = "This is the last paragraph in the XML story.";
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
	//PlaceIntoFrame has two parameters:
	//On: The page, spread, or master spread on which to create the frame
	//GeometricBounds: The bounds of the new frame (in page coordinates).
	myDocument.xmlElements.item(0).xmlElements.item(0).placeIntoFrame(myDocument.pages.item(0), [72, 72, 288, 288]);
    //</fragment>
}
function myTeardown(){
}