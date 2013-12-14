//GuideAndGridPreferences.jsx
//An InDesign CS6 JavaScript
//Sets preferences for guides and grids.
//Assumes you have a document open.
var myDocument = app.activeDocument;
with(myDocument.guidePreferences){
	guidesInBack = true;
	guidesLocked = false;
	guidesShown = true;
	guidesSnapTo = true;
}
with(myDocument.gridPreferences){
	documentGridShown = false;
	documentGridSnapTo = true;
	//Objects "snap" to the baseline grid when 
	//guidePreferences.guideSnapTo is set to true.
	baselineGridShown = true;
}