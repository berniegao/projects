//Ungroup.jsx
//An InDesign CS6 JavaScript
//
//Shows how to ungroup a group.
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
	var myPage = myDocument.pages.item(0);
	myPage.rectangles.add({geometricBounds:[72, 72, 144, 144]});
	myPage.ovals.add({geometricBounds:[72, 156, 144, 228]});
	myPage.ovals.add({geometricBounds:[156, 72, 228, 144]});
	myPage.rectangles.add({geometricBounds:[156, 157, 228, 228]});
	var myArray = new Array;
	//Add the items to the array.
	myArray.push(myPage.rectangles.item(0));
	myArray.push(myPage.ovals.item(0));
	myArray.push(myPage.rectangles.item(1));
	myArray.push(myPage.ovals.item(1));
	//Group the items.
	myPage.groups.add(myArray);
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	var myGroup = myPage.groups.item(0);
	//<fragment>
	//Given a group "myGroup"...
	myPageItems = myGroup.ungroup();
	//</fragment>
}
function myTeardown(){
}