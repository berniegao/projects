Rem DocumentWatermark.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to set the properties of the watermark feature for a document.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Rem <setup>
function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints 
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints 
	myDocument.DocumentPreferences.PageHeight = 792 
	myDocument.DocumentPreferences.PageWidth = 612 
	Set myTextFrame = myDocument.Pages.Item(1).TextFrames.Add
	myTextFrame.GeometricBounds = Array(36, 36, 756, 576)
	myTextFrame.contents = idTextFrameContents.idPlaceholderText
End Function
Rem </setup>
Rem <snippet>
Function mySnippet(myInDesign)
	Rem <fragment>
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkVisibility = true
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkDoPrint = true
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkDrawInBack = true
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkText = "Confidential"
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkFontFamily = "Arial"
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkFontStyle = "Bold"
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkFontPointSize = 72
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkFontColor = idUIColors.idRed 
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkOpacity = 60
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkRotation = -45
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkHorizontalPosition = idWatermarkHorizontalPositionEnum.idWatermarkHCenter
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkHorizontalOffset = 0
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkVerticalPosition = idWatermarkVerticalPositionEnum.idWatermarkVCenter
	myInDesign.Documents.Item(1).WatermarkPreferences.watermarkVerticalOffset = 0
	Rem </fragment>
End Function
Rem </snippet>
Rem <teardown>
Function myTeardown(myInDesign)
End Function
Rem </teardown>