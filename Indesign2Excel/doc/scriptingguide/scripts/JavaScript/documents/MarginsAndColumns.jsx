//MarginsAndColumns.jsx
//An InDesign CS6 JavaScript
//Sets up the margins and columns for the first page of an example document.
myDocument = app.documents.add();
with (myDocument.pages.item(0).marginPreferences){
	columnCount = 3;
	//columnGutter can be a number or a measurement string.
	columnGutter = "1p";
	bottom = "6p"
	//When document.documentPreferences.facingPages == true, 
	//"left" means inside; "right" means outside.
	left = "6p"
	right = "4p"
	top = "4p"
}