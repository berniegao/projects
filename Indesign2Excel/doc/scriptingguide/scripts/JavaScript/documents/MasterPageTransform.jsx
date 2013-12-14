//MasterPageTransform.jsx
//An InDesign CS6 JavaScript
//
//A brief demonstration of the master page overlay transformation.
//
main();
function main()
{
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup()
{
	app.transformPreferences.whenScaling = WhenScalingOptions.ADJUST_SCALING_PERCENTAGE;
	app.generalPreferences.showMasterPageOverlay = true;
	//Create a new document.
	var myDocument = app.documents.add();
	with(myDocument.viewPreferences)
	{
		horizontalMeasurementUnits = MeasurementUnits.POINTS;
		verticalMeasurementUnits = MeasurementUnits.POINTS;
	}
	myDocument.textDefaults.pointSize = 36;
	//Write some text on master pages.
	var myMasterName = myDocument.masterSpreads.item(0).name;
	var myMasterPages = myDocument.masterSpreads.item(0).pages;	
	myMasterPages.item(0).textFrames.add({geometricBounds:[36,36,108,576], contents:"Text on left page of " + myMasterName});
	myMasterPages.item(1).textFrames.add({geometricBounds:[36,648,108,1188], contents:"Text on right page of " + myMasterName});
	//Create another 3 pages.
	var myPages = myDocument.pages;
	for (var i = 1; i < 4; i++)
	{
		myPages.add();
	}
}
function mySnippet()
{
	//</fragment>
	//Given a document with four pages (0, 1, 2, 3)...
	var myDocument = app.activeDocument;
	var myPages = myDocument.pages;
    
	//Rotate master page overlay around its top-left corner.
	var myRotateMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:27});
	myPages.item(0).masterPageTransform = myRotateMatrix;
    
	//Scale master page overlay around its top-left corner.
	var myScaleMatrix = app.transformationMatrices.add({horizontalScaleFactor:0.5, verticalScaleFactor:0.5});
	myPages.item(1).masterPageTransform = myScaleMatrix;
	
    //Shear master page overlay around its top-left corner.
	var myShearMatrix =app.transformationMatrices.add({clockwiseShearAngle:30});
	myPages.item(2).masterPageTransform = myShearMatrix;
	
    //Translate master page overlay 1 inch right and 2 inches down.
	var myTranslateMatrix = app.transformationMatrices.add({horizontalTranslation:72, verticalTranslation:144});
	myPages.item(3).masterPageTransform = myTranslateMatrix;
	//</fragment>
}
function myTeardown()
{
}
