//PageReframe.jsx
//An InDesign CS6 JavaScript
//
//Resize pages by reframe method.
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
	//Make the page one inch wider and one inch higher.
	var myPage = myPages.item(1);
	var myBounds = myPage.bounds;
	var myY1 = myBounds[0];
	var myX1 = myBounds[1];
	var myY2 = myBounds[2]+72;
	var myX2 = myBounds[3]+72;
	myPage.reframe(CoordinateSpaces.INNER_COORDINATES, [[myX1, myY1], [myX2, myY2]]);
	//</fragment>
}
function myTeardown()
{
}
