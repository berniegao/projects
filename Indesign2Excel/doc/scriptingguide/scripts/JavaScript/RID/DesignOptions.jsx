//DesignOptions.jsx
//An InDesign CS6 JavaScript
//
//Shows how use design options to control the animation of an object.
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
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	var myColorA = myAddColor(myDocument, "DGC1_446a", ColorModel.process, [0, 100, 0, 50]);
	var myColorB = myAddColor(myDocument, "DGC1_446b", ColorModel.process, [100, 0, 50, 0]);
	var myOvalA = myPage.ovals.add({fillColor:myColorA, strokeColor:myDocument.swatches.item("None"), geometricBounds:[66, 66, 78, 78]});
	var myOvalB = myPage.ovals.add({fillColor:myColorB, strokeColor:myDocument.swatches.item("None"), geometricBounds:[138, 66, 150, 78]});
	//<fragment>
	//Given a page containing the ovals "myOvalA" and "myOvalB"... 
	var myMotionPreset = app.motionPresets.item("move-right-grow");
	myOvalA.animationSettings.duration = 2;
	myOvalA.animationSettings.playsLoop = true;
	myOvalA.animationSettings.preset = myMotionPreset;
	myOvalA.animationSettings.designOption = DesignOptions.fromCurrentAppearance;
	myOvalB.animationSettings.duration = 2;
	myOvalB.animationSettings.playsLoop = true;
	myOvalB.animationSettings.preset = myMotionPreset;
	myOvalB.animationSettings.designOption = DesignOptions.toCurrentAppearance;
	//</fragment>
}
function myTeardown(){
}
function myAddColor(myDocument, myColorName, myColorModel, myColorValue){
	var myColor;
	if(myDocument.colors.item(myColorName).isValid == false){
		myColor = myDocument.colors.add({name:myColorName});
	}
	else{
		myColor = myDocument.colors.item(myColorName);
	}
	myColor.properties = {model:myColorModel, colorValue:myColorValue};
	return myColor;
}