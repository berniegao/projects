//PageResize.jsx
//An InDesign CS6 JavaScript
//
//Resize pages.
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
	//Resize page to two times bigger
	myPages.item(1).resize(CoordinateSpaces.INNER_COORDINATES,
									AnchorPoint.CENTER_ANCHOR,
									ResizeMethods.MULTIPLYING_CURRENT_DIMENSIONS_BY,
									[2, 2]);
	//Resize page to 400 points width and 600 points height.
	myPages.item(2).resize(CoordinateSpaces.INNER_COORDINATES,
									AnchorPoint.CENTER_ANCHOR,
									ResizeMethods.REPLACING_CURRENT_DIMENSIONS_WITH,
									[400, 600]);
	//</fragment>
}
function myTeardown()
{
}
