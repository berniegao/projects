Rem ApplicationWatermark.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to set the properties of the watermark feature.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Rem <setup>
function mySetup(myInDesign)
End Function
Rem </setup>
Rem <snippet>
Function mySnippet(myInDesign)
	Rem <fragment>
	myInDesign.watermarkPreferences.watermarkVisibility = true
	myInDesign.watermarkPreferences.watermarkDoPrint = true
	myInDesign.watermarkPreferences.watermarkDrawInBack = true
	myInDesign.watermarkPreferences.watermarkText = "Confidential"
	myInDesign.watermarkPreferences.watermarkFontFamily = "Arial"
	myInDesign.watermarkPreferences.watermarkFontStyle = "Bold"
	myInDesign.watermarkPreferences.watermarkFontPointSize = 72
	myInDesign.watermarkPreferences.watermarkFontColor = idUIColors.idRed
	myInDesign.watermarkPreferences.watermarkOpacity = 60
	myInDesign.watermarkPreferences.watermarkRotation = -45
	myInDesign.watermarkPreferences.watermarkHorizontalPosition = idWatermarkHorizontalPositionEnum.idWatermarkHCenter
	myInDesign.watermarkPreferences.watermarkHorizontalOffset = 0
	myInDesign.watermarkPreferences.watermarkVerticalPosition = idWatermarkVerticalPositionEnum.idWatermarkVCenter
	myInDesign.watermarkPreferences.watermarkVerticalOffset = 0
	Rem </fragment>
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints 
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints 
	myDocument.DocumentPreferences.PageHeight = 792 
	myDocument.DocumentPreferences.PageWidth = 612 
	Set myTextFrame = myDocument.Pages.Item(1).TextFrames.Add
	myTextFrame.GeometricBounds = Array(36, 36, 756, 576)
	myTextFrame.Contents = idTextFrameContents.idPlaceholderText
End Function
Rem </snippet>
Rem <teardown>
Function myTeardown(myInDesign)
End Function
Rem </teardown>