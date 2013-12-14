//FlashExport.jsx
//An InDesign CS6 JavaScript
//
//Shows how to export to a Flash file.
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	var myPage = myDocument.pages.item(0);
	var myX = myDocument.documentPreferences.pageWidth/2;
	var myY = myDocument.documentPreferences.pageHeight/2;
	//Draw the polygon at the center of the page.
	var myPolygon = myDrawPolygon(myPage, [myX, myY], 5, 72, true, .38196601125011);
}
function mySnippet(){
	var myDocument = app.documents.item(0);
	//<fragment>
	//Set SWF export preferences
	//$.write(app.swfExportPreferences.properties.toSource());
	app.swfExportPreferences.fitMethod  = FitMethodSettings.fitGivenScalePercentage;
	app.swfExportPreferences.fitOption = FitDimension.fit1024x768;
	app.swfExportPreferences.fitScale = 100;
	app.swfExportPreferences.fitWidthAndHeight = [1024, 768];
	app.swfExportPreferences.pageRange = "1";
	app.swfExportPreferences.dynamicDocumentExportReaderSpreads = true;
	app.swfExportPreferences.rasterizePages = false;
	app.swfExportPreferences.generateHTML = false;
	app.swfExportPreferences.viewSWFAfterExporting = false;
	app.swfExportPreferences.textExportPolicy = DynamicDocumentsTextExportPolicy.live;
	app.swfExportPreferences.includeInteractivePageCurl = true;
	app.swfExportPreferences.rasterCompression = RasterCompressionOptions.losslessCompression;
	app.swfExportPreferences.jpegQualityOptions = DynamicDocumentsJPEGQualityOptions.maximum;
	app.swfExportPreferences.curveQuality = SWFCurveQualityValue.maximum;
	app.swfExportPreferences.rasterResolution = 72;
	app.swfExportPreferences.resamplingType = Sampling.none;
	app.swfExportPreferences.resamplingThreshold = 72;
	app.swfExportPreferences.useNetworkAccess = false;
	//Export the page as .swf.
	myDocument.exportFile(ExportFormat.swf, File(Folder.desktop + "/test.swf"), false);
	//Set XFl export preferences.
	app.xflExportPreferences.fitMethod = FitMethodSettings.fitGivenScalePercentage;
	app.xflExportPreferences.fitOption = FitDimension.fit1024x768;
	app.xflExportPreferences.fitScale =100;
	app.xflExportPreferences.fitWidthAndHeight = [1024, 768];
	app.xflExportPreferences.pageRange = "1";
	app.xflExportPreferences.dynamicDocumentExportReaderSpreads = false;
	app.xflExportPreferences.rasterizePages = false;
	app.xflExportPreferences.flattenTransparency = false;
	app.xflExportPreferences.textExportPolicy =DynamicDocumentsTextExportPolicy.live;
	app.xflExportPreferences.rasterFormat = XFLRasterizeFormatOptions.jpeg;
	app.xflExportPreferences.jpegQualityOptions = DynamicDocumentsJPEGQualityOptions.maximum;
	app.xflExportPreferences.rasterResolution = 72;
	app.xflExportPreferences.resamplingType = Sampling.none;
	app.xflExportPreferences.resamplingThreshold = 72;
	//Export as .xfl
	myDocument.exportFile(ExportFormat.packagedXFL, File(Folder.desktop + "/test.test.xfl"), false);
	//</fragment>
}
function myTeardown(){
}
function myDrawPolygon(myParent, myCenterPoint, myNumberOfPoints, myRadius, myStarPolygon, myStarInset){
	var myTransformedPoint;
	var myPathPoints = new Array;
	var myPoint = [0,0];
	if(myStarPolygon == true){
		myNumberOfPoints = myNumberOfPoints * 2;
	}
	var myInnerRadius = myRadius * myStarInset;
	var myAngle = 360/myNumberOfPoints;
	var myRotateMatrix = app.transformationMatrices.add({counterclockwiseRotationAngle:90});
	var myOuterTranslateMatrix = app.transformationMatrices.add({horizontalTranslation:myRadius});	
	var myInnerTranslateMatrix = app.transformationMatrices.add({horizontalTranslation:myInnerRadius});
	for (var myPointCounter = 0; myPointCounter < myNumberOfPoints;myPointCounter ++){
		//Translate the point to the inner/outer radius.
		if ((myStarInset == 1)||(myIsEven(myPointCounter)==true)){
			myTransformedPoint = myOuterTranslateMatrix.changeCoordinates(myPoint);
		}
		else{
			myTransformedPoint = myInnerTranslateMatrix.changeCoordinates(myPoint);
		}
		myTransformedPoint = myRotateMatrix.changeCoordinates(myTransformedPoint);
		myPathPoints.push(myTransformedPoint);
		myRotateMatrix = myRotateMatrix.rotateMatrix(myAngle);
	}
	//Create a new polygon.
	var myPolygon = myParent.polygons.add();
	//myPolygon.label = myStarInset + " inset"     ;
	//Set the entire path of the polygon to the array we've created.
	myPolygon.paths.item(0).entirePath = myPathPoints;
	//If the center point is somewhere other than [0,0], translate the polygon to the center point.
	if((myCenterPoint[0] != 0)||((myCenterPoint[1] != 0))){
		var myTranslateMatrix = app.transformationMatrices.add({horizontalTranslation:myCenterPoint[0], verticalTranslation:myCenterPoint[1]});
		myPolygon.transform(CoordinateSpaces.pasteboardCoordinates, AnchorPoint.centerAnchor, myTranslateMatrix);
	}
}
//This function returns true if myNumber is even, false if it is not.
function myIsEven(myNumber){
	var myResult = (myNumber%2)?false:true;
	return myResult;
}