//CreatePrinterPreset.jsx
//An InDesign CS6 JavaScript
//Creates a new printer preset.
//If the preset does not already exist, then create it;
//otherwise, fill in the properties of the existing preset.
var myPreset;
myPreset = app.printerPresets.item("myPreset");
try{
	myPreset.name;
}
catch(myError){
	myPreset = app.printerPresets.add({name:"myPreset"});
}
with(app.activeDocument.printPreferences){
	//Because many printing properties are dependent on other printing properties,
	//we've surrounded each property-setting line with try...catch statements--
	//these will make it easier for you to experiment with print preset settings.
	try{
		myPreset.printer = printer;
	}
	catch(e){}
	try{
		myPreset.ppd = ppd;
	}
	catch(e){}
	try{
		myPreset.copies = copies;
	}
	catch(e){}
	try{
		myPreset.collating = collating;
	}
	catch(e){}
	try{	
		myPreset.reverseOrder = reverseOrder;
	}
	catch(e){}
	try{
		myPreset.pageRange = pageRange;
	}
	catch(e){}
	try{
		myPreset.printSpreads = printSpreads;
	}
	catch(e){}
	try{
		myPreset.printMasterPages = printMasterPages;
	}
	catch(e){}
	try{
		myPreset.printFile = printFile;
	}
	catch(e){}
	try{
		myPreset.sequence = sequence;
	}
	catch(e){}
	try{
		myPreset.printBlankPages = printBlankPages;
	}
	catch(e){}	
	try{
		myPreset.printGuidesGrids = printGuidesGrids;
	}
	catch(e){}	
	try{
		myPreset.printNonprinting = printNonprinting;
	}
	catch(e){}
	try{
		myPreset.paperSize = paperSize;
	}
	catch(e){}
	try{
		myPreset.paperHeight = paperHeight;
	}
	catch(e){}
	try{
		myPreset.paperWidth = paperWidth;
	}
	catch(e){}
	try{
		myPreset.printPageOrientation = printPageOrientation;
	}
	catch(e){}
	try{
		myPreset.pagePosition = pagePosition;
	}
	catch(e){}
	try{
		myPreset.paperGap = paperGap;
	}
	catch(e){}
	try{
		myPreset.paperOffset = paperOffset;
	}
	catch(e){}
	try{
		myPreset.paperTransverse = paperTransverse;
	}
	catch(e){}
	try{
		myPreset.scaleHeight = scaleHeight;
	}
	catch(e){}
	try{
		myPreset.scaleWidth = scaleWidth;
	}
	catch(e){}
	try{
		myPreset.scaleMode = scaleMode;

	}
	catch(e){}
	try{
		myPreset.scaleProportional = scaleProportional;
	}
	catch(e){}
	try{
		myPreset.textAsBlack = textAsBlack;
	}
	catch(e){}
	try{
		myPreset.thumbnails = thumbnails;
	}
	catch(e){}
	try{
		myPreset.thumbnailsPerPage = thumbnailsPerPage;
	}
	catch(e){}
	try{
		myPreset.tile = tile;
	}
	catch(e){}
	try{
		myPreset.tilingType = tilingType;
	}
	catch(e){}
	try{
		myPreset.tilingOverlap = tilingOverlap;
	}
	catch(e){}
	try{
		myPreset.allPrinterMarks = allPrinterMarks;
	}
	catch(e){}
	try{
		myPreset.useDocumentBleedToPrint = useDocumentBleedToPrint;
	}
	catch(e){}
	try{
		myPreset.bleedBottom = bleedBottom;
	}
	catch(e){}
	try{
		myPreset.bleedTop = bleedTop;
	}
	catch(e){}
	try{
		myPreset.bleedInside = bleedInside;
	}
	catch(e){}
	try{
		myPreset.bleedOutside = bleedOutside;
	}
	catch(e){}
	try{
		myPreset.bleedMarks = bleedMarks;
	}
	catch(e){}
	try{
		myPreset.colorBars = colorBars;
	}
	catch(e){}
	try{
		myPreset.cropMarks = cropMarks;
	}
	catch(e){}
	try{
		myPreset.includeSlugToPrint = includeSlugToPrint;
	}
	catch(e){}
	try{
		myPreset.markLineWeight = markLineWeight;
	}
	catch(e){}
	try{
		myPreset.markOffset = markOffset;
	}
	catch(e){}
	try{
		myPreset.markType = markType;
	}
	catch(e){}
	try{
		myPreset.pageInformationMarks = pageInformationMarks;
	}
	catch(e){}
	try{
		myPreset.registrationMarks = registrationMarks;
	}
	catch(e){}
	try{
		myPreset.negative = negative;
	}
	catch(e){}
	try{
		myPreset.colorOutput = colorOutput ;
	}
	catch(e){}
	try{
		myPreset.trapping = trapping;
	}
	catch(e){}
	try{
		myPreset.screening = screening;
	}
	catch(e){}
	try{
		myPreset.flip = flip;
	}
	catch(e){}
	try{
		myPreset.printBlack = printBlack;
	}
	catch(e){}
	try{
		myPreset.printCyan = printCyan;
	}
	catch(e){}
	try{
		myPreset.printMagenta = printMagenta;
	}
	catch(e){}
	try{
		myPreset.printYellow = printYellow;
	}
	catch(e){}
	try{
		myPreset.blackAngle = blackAngle;
	}
	catch(e){}
	try{
		myPreset.blackFrequency = blackFrequency;
	}
	catch(e){}
	try{
		myPreset.cyanAngle = cyanAngle;
	}
	catch(e){}
	try{
		myPreset.cyanFrequency = cyanFrequency;
	}
	catch(e){}
	try{
		myPreset.magentaAngle = magentaAngle;
	}
	catch(e){}
	try{
		myPreset.magentaFreqency = magentaFreqency;
	}
	catch(e){}
	try{
		myPreset.yellowAngle = yellowAngle;
	}
	catch(e){}
	try{
		myPreset.yellowFrequency = yellowFrequency;
	}
	catch(e){}
	try{
		myPreset.compositeAngle = compositeAngle;
	}
	catch(e){}
	try{
		myPreset.compositeFrequency = compositeFrequency;
	}
	catch(e){}
	try{
		myPreset.simulateOverprint = simulateOverprint;
	}
	catch(e){}
	try{
		myPreset.sendImageData = sendImageData;
	}
	catch(e){}
	try{
		myPreset.fontDownloading = fontDownloading;
	}
	catch(e){}
	try{
		myPreset.downloadPPDFOnts = downloadPPDFOnts;
	}
	catch(e){}
	try{
		myPreset.dataFormat = dataFormat;
	}
	catch(e){}
	try{
		myPreset.postScriptLevel = postscriptLevel;
	}
	catch(e){}
	try{
		myPreset.sourceSpace = sourceSpace;
	}
	catch(e){}
	try{
		myPreset.intent = intent;
	}
	catch(e){}
	try{
		myPreset.crd = crd;
	}
	catch(e){}
	try{
		myPreset.profile = profile;
	}
	catch(e){}
	try{
		myPreset.opiImageReplacement = opiImageReplacement;
	}
	catch(e){}
	try{
		myPreset.omitBitmaps = omitBitmaps;
	}
	catch(e){}
	try{
		myPreset.omitEPS = omitEPS;
	}
	catch(e){}
	try{
		myPreset.omitPDF = omitPDF;
	}
	catch(e){}
	try{
		myPreset.flattenerPresetName = flattenerPresetName ;
	}
	catch(e){}
	try{
		myPreset.ignoreSpreadOverrides = ignoreSpreadOverrides;
	}
	catch(e){}
}