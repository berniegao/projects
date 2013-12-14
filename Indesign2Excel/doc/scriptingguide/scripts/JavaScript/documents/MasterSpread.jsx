//MasterSpread.jsx
//An InDesign CS6 JavaScript
//
//Creates a document, then demonstrates setting master spread properties.
//Set up the first master spread in a new document.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    var myDocument = app.documents.add();
    //Set up the document.
    with(myDocument.documentPreferences){
    	pageHeight = "11i"
    	pageWidth = "8.5i"
    	facingPages = true;
    	pageOrientation = PageOrientation.portrait;
    }
}
//</setup>

//<snippet>
function mySnippet(){
    //Demonstrates setting master spread properties.
    //Set up the first master spread in a new document.
    var myDocument = app.documents.item(0);
    //<fragment>
    //Set the document's ruler origin to page origin. This is very important!
    //If you don't do this, getting objects to the correct position on the
    //page is much more difficult.
    myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
    with(myDocument.masterSpreads.item(0)){
    	//Set up the left page (verso).
    	with(pages.item(0)){
    		with(marginPreferences){
    			columnCount = 3;
    			columnGutter = "1p";
    			bottom = "6p"
    			//"left" means inside; "right" means outside.
    			left = "6p"
    			right = "4p"
    			top = "4p"
    		}
    		//Add a simple footer with a section number and page number.
    		with(textFrames.add()){
    			geometricBounds = ["61p", "4p", "62p", "45p"];
    			insertionPoints.item(0).contents = SpecialCharacters.sectionMarker;
    			insertionPoints.item(0).contents = SpecialCharacters.emSpace;
    			insertionPoints.item(0).contents = SpecialCharacters.autoPageNumber;
    			paragraphs.item(0).justification = Justification.leftAlign;
    		}
    	}
    	//Set up the right page (recto).
    	with(pages.item(1)){
    		with(marginPreferences){
    			columnCount = 3;
    			columnGutter = "1p";
    			bottom = "6p"
    			//"left" means inside; "right" means outside.
    			left = "6p"
    			right = "4p"
    			top = "4p"
    		}
    		//Add a simple footer with a section number and page number.
    		with(textFrames.add()){
    			geometricBounds = ["61p", "6p", "62p", "47p"];
    			insertionPoints.item(0).contents = SpecialCharacters.autoPageNumber;
    			insertionPoints.item(0).contents = SpecialCharacters.emSpace;
    			insertionPoints.item(0).contents = SpecialCharacters.sectionMarker;
    			paragraphs.item(0).justification = Justification.rightAlign;
    		}
    	}
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


