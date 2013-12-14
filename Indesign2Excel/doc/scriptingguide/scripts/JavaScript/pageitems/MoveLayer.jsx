// MoveLayer.jsx
// An InDesign CS6 JavaScript
// 
// Shows how to change the stacking order of objects using layers.
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
	// Add colors.
	myAddColor(myDocument, "DGC1_446a", ColorModel.process, [0, 100, 0, 50]);
	myAddColor(myDocument, "DGC1_446b", ColorModel.process, [100, 0, 50, 0]);
	var myPage = myDocument.pages.item(0);
	var myRectangle = myPage.rectangles.add();
	myRectangle.geometricBounds = [72, 72, 144, 144];
	var myOval = myPage.ovals.add();
	myOval.geometricBounds = [108, 108, 180, 180];
	myRectangle.fillColor = myDocument.colors.item("DGC1_446a");
	myOval.fillColor = myDocument.colors.item("DGC1_446b");
	// Add a layer.
	if(!myDocument.layers.item("myLayer").isValid){
		var myLayer = myDocument.layers.add();
		myLayer.name = "myLayer";
	}
}
function mySnippet(){
	var myRectangle = app.documents.item(0).pages.item(0).rectangles.item(0);
	var myOval = app.documents.item(0).pages.item(0).ovals.item(0);
	var myLayer = app.documents.item(0).layers.item("myLayer");
	myOval.itemLayer = myLayer;
	// <fragment>
	// Given a layer "myLayer", move the layer behind
	// the default layer (the lowest layer in the document 
	// is Layers.Item(-1).
	myLayer.move(LocationOptions.after, app.documents.item(0).layers.item(-1));
	// </fragment>
}
function myTeardown(){
}
function myAddColor(myDocument, myColorName, myColorModel, myColorValue){
	if(!myDocument.colors.item(myColorName).isValid){
        var myColor = myDocument.colors.add();
	}
    myColor.name = myColorName;
    myColor.model = myColorModel;
    myColor.colorValue = myColorValue;
}
