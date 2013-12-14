//SpreadAndPageGuides.jsx
//An InDesign CS6 JavaScript
//Demonstrate the difference between spread guides and page guides.
var myDocument = app.documents.add();
myDocument.documentPreferences.facingPages = true;
myDocument.documentPreferences.pagesPerDocument = 3;
with(myDocument.spreads.item(1)){
	//Note the difference between these two guides on pages 2 and 3.
	guides.add(undefined, {orientation:HorizontalOrVertical.horizontal, location:"6p", fitToPage:true});
	guides.add(undefined, {orientation:HorizontalOrVertical.horizontal, location:"9p", fitToPage:false});
}