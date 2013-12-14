#targetengine "main"
//DocumentTemplate.jsx
//An InDesign CS6 JavaScript
//
//Creates a document template, including master pages, layers, a color, 
//paragraph and character styles, guides, and XMP information.
//Set the application default margin preferences.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
}
//</setup>

//<snippet>
function mySnippet(){
    //Creates a document template, including master pages, layers, a color, 
    //paragraph and character styles, guides, and XMP information.
    //<fragment>
    //Set the application default margin preferences.
    with (app.marginPreferences){
    	//Save the current application default margin preferences.
    	var myY1 = top;
    	var myX1 = left;
    	var myY2 = bottom;
    	var myX2 = right;
    	//Set the application default margin preferences.
    	//Document baseline grid will be based on 14 points, and
    	//all margins are set in increments of 14 points.
    	top = 14 * 4 + "pt";
    	left = 14 * 4 + "pt";
    	bottom = "74pt";
    	right = 14 * 5 + "pt";
    }
    //Make a new document.
    var myDocument = app.documents.add();
    myDocument.documentPreferences.pageWidth = "7i";
    myDocument.documentPreferences.pageHeight = "9i";
    myDocument.documentPreferences.pageOrientation = PageOrientation.portrait;
    //At this point, we can reset the application 
	//default margins to their original state.
    with (app.marginPreferences){
    	top = myY1;
    	left = myX1;
    	bottom = myY2;
    	right = myX2;
    }
    //Set up the bleed and slug areas.
    with(myDocument.documentPreferences){
    	//Bleed
    	documentBleedBottomOffset = "3p";
    	documentBleedTopOffset = "3p";
    	documentBleedInsideOrLeftOffset = "3p";
    	documentBleedOutsideOrRightOffset = "3p";
    	//Slug
    	slugBottomOffset = "18p";
    	slugTopOffset = "3p";
    	slugInsideOrLeftOffset = "3p";
    	slugRightOrOutsideOffset = "3p";
    }
    //Create a color.
    try{
    	myDocument.colors.item("PageNumberRed").name;
    }
	catch (myError){
		myDocument.colors.add({name:"PageNumberRed", model:ColorModel.process,colorValue:[20, 100, 80, 10]});
	}
    //Next, set up some default styles.
    //Create up a character style for the page numbers.
    try{
    	myDocument.characterStyles.item("page_number").name;
    }
    catch (myError){
    	myDocument.characterStyles.add({name:"page_number"});
    }
    myDocument.characterStyles.item("page_number").fillColor
        = myDocument.colors.item("PageNumberRed");
    //Create a pair of paragraph styles for the page footer text.
    //These styles have only basic formatting.
    try{
    	myDocument.paragraphStyles.item("footer_left").name;
    }
    catch (myError){
    	myDocument.paragraphStyles.add({name:"footer_left", pointSize:11,leading:14});
    }
    //Create a paragraph style for the page footer text.
    try{
    	myDocument.paragraphStyles.item("footer_right").name;
    }
    catch (myError){
    	myDocument.paragraphStyles.add({name:"footer_right",basedOn:myDocument.paragraphStyles.item("footer_left"),justification:Justification.rightAlign, pointSize:11, leading:14});
    }
    //Create a layer for guides.
    try{
    	myDocument.layers.item("GuideLayer").name;
    }
    catch (myError){
    	myDocument.layers.add({name:"GuideLayer"});
    }
    //Create a layer for the footer items.
    try{
    	myDocument.layers.item("Footer").name;
    }
    catch (myError){
    	myDocument.layers.add({name:"Footer"});
    }
    //Create a layer for the slug items.
    try{
    	myDocument.layers.item("Slug").name;
    }
    catch (myError){
    	myDocument.layers.add({name:"Slug"});
    }
    //Create a layer for the body text.
    try{
    	myDocument.layers.item("BodyText").name;
    }
    catch (myError){
    	myDocument.layers.add({name:"BodyText"});
    }
    with(myDocument.viewPreferences){
    	rulerOrigin = RulerOrigin.pageOrigin;
    	horizontalMeasurementUnits = MeasurementUnits.points;
    	verticalMeasurementUnits = MeasurementUnits.points;
    }
    //Document baseline grid and document grid
    with(myDocument.gridPreferences){
    	baselineStart = 56;
    	baselineDivision = 14;
    	baselineShown = false;
    	horizontalGridlineDivision = 14;
    	horizontalGridSubdivision = 5
    	verticalGridlineDivision = 14;
    	verticalGridSubdivision = 5
    	documentGridShown = false;
    }
    //Document XMP information.
    with (myDocument.metadataPreferences){
    	author = "Adobe Systems";
    	copyrightInfoURL = "http://www.adobe.com";
    	copyrightNotice = "This document is not copyrighted.";
    	copyrightStatus = CopyrightStatus.no;
    	description = "Example 7 x 9 book layout";
    	documentTitle = "Example";
    	jobName = "7 x 9 book layout template";
    	keywords = ["7 x 9", "book", "template"];
        var myURL = "http://ns.adobe.com/xap/1.0/";
    	var myNewContainer = createContainerItem(myURL, "email");
    	setProperty(myURL, "email/*[1]", "someone@adobe.com");
    }
    //Set up the master spread.
    with(myDocument.masterSpreads.item(0)){
    	with(pages.item(0)){
    		//Left and right are reversed for left-hand pages (becoming "inside"
            //and "outside"--this is also true in the InDesign user interface).
    		var myBottomMargin = myDocument.documentPreferences.pageHeight - marginPreferences.bottom;
    		var myRightMargin = myDocument.documentPreferences.pageWidth - marginPreferences.left;
    		guides.add(myDocument.layers.item("GuideLayer"), {orientation:HorizontalOrVertical.vertical,location:marginPreferences.right});
    		guides.add(myDocument.layers.item("GuideLayer"), {orientation:HorizontalOrVertical.vertical,location:myRightMargin});
    		guides.add(myDocument.layers.item("GuideLayer"), {orientation:HorizontalOrVertical.horizontal,location:marginPreferences.top, fitToPage:false});
    		guides.add(myDocument.layers.item("GuideLayer"), {orientation:HorizontalOrVertical.horizontal,location:myBottomMargin, fitToPage:false});
    		guides.add(myDocument.layers.item("GuideLayer"), {orientation:HorizontalOrVertical.horizontal,location:myBottomMargin + 14, fitToPage:false});
    		guides.add(myDocument.layers.item("GuideLayer"), {orientation:HorizontalOrVertical.horizontal,location:myBottomMargin + 28, fitToPage:false});
    		var myLeftFooter = textFrames.add(myDocument.layers.item("Footer"),undefined, undefined,{geometricBounds:[myBottomMargin+14,marginPreferences.right,myBottomMargin+28,myRightMargin]})
    		with (myLeftFooter.parentStory.insertionPoints.item(0)) {
                contents = SpecialCharacters.sectionMarker;
                contents = SpecialCharacters.emSpace;
                contents = SpecialCharacters.autoPageNumber;
            }
            with (myLeftFooter.parentStory.characters.item(0)){
				appliedCharacterStyle= myDocument.characterStyles.item("page_number");
            }
    		with (myLeftFooter.parentStory.paragraphs.item(0)){
                applyParagraphStyle(myDocument.paragraphStyles.item("footer_left",false));
            }
    		//Slug information.
    		with(myDocument.metadataPreferences){
    			var myString = "Author:\t" + author + "\tDescription:\t" + description + "\rCreation Date:\t"+ new Date + "\tEmail Contact\t"+ getProperty("http://ns.adobe.com/xap/1.0/","email/*[1]");
    		}
    		var myLeftSlug = textFrames.add(myDocument.layers.item("Slug"),undefined, undefined,{geometricBounds:[myDocument.documentPreferences.pageHeight+36,marginPreferences.right,myDocument.documentPreferences.pageHeight + 144,myRightMargin], contents:myString});
    		myLeftSlug.parentStory.texts.item(0).convertToTable();
    		//Body text master text frame.
    		var myLeftFrame = textFrames.add(myDocument.layers.item("BodyText"),undefined, undefined,{geometricBounds:[marginPreferences.top,marginPreferences.right,myBottomMargin, myRightMargin]});
    	}
    	with(pages.item(1)){
    		var myBottomMargin = myDocument.documentPreferences.pageHeight - marginPreferences.bottom;
    		var myRightMargin = myDocument.documentPreferences.pageWidth - marginPreferences.right;
    		guides.add(myDocument.layers.item("GuideLayer"),{orientation:HorizontalOrVertical.vertical,location:marginPreferences.left}			);
    		guides.add(myDocument.layers.item("GuideLayer"),{orientation:HorizontalOrVertical.vertical,location:myRightMargin});
    		var myRightFooter = textFrames.add(myDocument.layers.item("Footer"),undefined, undefined,{geometricBounds:[myBottomMargin+14, marginPreferences.left,myBottomMargin+28, myRightMargin]})
    		with (myRightFooter.parentStory.insertionPoints.item(0)) {
                contents = SpecialCharacters.autoPageNumber;
                contents = SpecialCharacters.emSpace;
                contents = SpecialCharacters.sectionMarker;
			}
    		with (myRightFooter.parentStory.characters.item(-1)) {
				appliedCharacterStyle = myDocument.characterStyles.item("page_number");
			}
    		with (myRightFooter.parentStory.paragraphs.item(0)) {
				applyParagraphStyle(myDocument.paragraphStyles.item("footer_right"),false);
			}
    		//Slug information.
    		var myRightSlug = textFrames.add(myDocument.layers.item("Slug"),undefined, undefined,{geometricBounds:[myDocument.documentPreferences.pageHeight+36,marginPreferences.left,myDocument.documentPreferences.pageHeight + 144,myRightMargin], contents:myString});
    		myRightSlug.parentStory.texts.item(0).convertToTable();
    		//Body text master text frame.
    		var myRightFrame = textFrames.add(myDocument.layers.item("BodyText"),undefined, undefined,{geometricBounds:[marginPreferences.top, marginPreferences.left,myBottomMargin, myRightMargin],previousTextFrame:myLeftFrame});
    	}
    }
    //Add section marker text--this text will appear in the footer.
    myDocument.sections.item(0).marker = "Section 1";
    //When you link the master page text frames, one of the frames sometimes becomes
    //selected. Deselect it.
    app.select(NothingEnum.nothing, undefined);
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>



