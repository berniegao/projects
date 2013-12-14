//PlaceTextFile.jsx
//An InDesign CS6 JavaScript
//
//Places a text file on page 1 of a the active document.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myDocument = app.documents.add();
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	var myPage = myDocument.pages.item(0);
	//Get the top and left margins to use as a place point.
	var myX = myPage.marginPreferences.left;
	var myY = myPage.marginPreferences.top;
	//Autoflow a text file on the current page.
	//Parameters for Page.place():
	//File as File object, 
	//[PlacePoint as Array [x, y]]
	//[DestinationLayer as Layer object]
	//[ShowingOptions as Boolean = False]
	//[Autoflowing as Boolean = False]
	//You'll have to fill in your own file path.
	var myStory = myPage.place(File("/c/test.txt"), [myX, myY], undefined, false, true)[0];
	//Note that if the PlacePoint parameter is inside a column, only the vertical (y)
	//coordinate will be honored--the text frame will expand horizontally to fit the column.
	//</fragment>
}

function myTeardown(){
}
