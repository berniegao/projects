//PlaceIntoCopy.jsx
//An InDesign CS6 JavaScript
//
//Associate an XML element with an inline page item (i.e., an anchored object)
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
    var myPage = app.activeWindow.activePage;
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
	var myTextFrame = myPage.textFrames.add({geometricBounds:[72, 72, 144, 144]});
}
function mySnippet(){
    //<fragment>
    var myDocument = app.documents.item(0);
    var myPage = myDocument.pages.item(0);
	//Function PlaceIntoCopy(On, PlacePoint, CopyItem As PageItem, [RetainExistingFrame As Boolean = False]) As PageItem	
	var myXMLElement = myDocument.xmlElements.item(0);
	myXMLElement.placeIntoCopy(myPage, [288, 72], myPage.textFrames.item(0), true);
    //</fragment>
}
function myTeardown(){
}