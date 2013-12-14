//PageSelect.jsx
//An InDesign CS6 JavaScript
//
//Select pages.
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
	//Select page 1 and 2.
	myPages.item(1).select();
	myPages.item(2).select(SelectionOptions.ADD_TO);
	//Select last page.
	myDocument.select(myPages.item(-1), SelectionOptions.ADD_TO);
	//</fragment>
}
function myTeardown()
{
}
