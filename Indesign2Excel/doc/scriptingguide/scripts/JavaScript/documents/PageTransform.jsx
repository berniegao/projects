//PageTransform.jsx
//An InDesign CS6 JavaScript
//
//A brief demonstration of the page transform method.

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
	//Create a new document.
	var myDocument = app.documents.add();
	with(myDocument.viewPreferences)
	{
		horizontalMeasurementUnits = MeasurementUnits.POINTS;
		verticalMeasurementUnits = MeasurementUnits.POINTS;
	}
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

    //Rotate a page around its center point.
	var myRotateMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:27});
	myTransform(myPages.item(0), myRotateMatrix);

	//Scale a page around its center point.
	var myScaleMatrix = app.transformationMatrices.add({horizontalScaleFactor:0.8, verticalScaleFactor:0.8});
	myTransform(myPages.item(1), myScaleMatrix);

    //Shear a page around its center point.
	var myShearMatrix = app.transformationMatrices.add({clockwiseShearAngle:30});
	myTransform(myPages.item(2), myShearMatrix);
	//</fragment>
}
function myTeardown()
{
}
//</fragment>
function myTransform(myPage, myTransformationMatrix)
{
	myPage.transform(CoordinateSpaces.PASTEBOARD_COORDINATES,
					AnchorPoint.CENTER_ANCHOR,
					myTransformationMatrix);
}
//</fragment>
