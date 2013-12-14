Rem MakeTextFrame.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a text frame in an example document.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
   Set myDocument = myInDesign.Documents.Add
   Rem Set the measurement units to points.
   myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
   myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
End Function
Function mySnippet(myInDesign)
   Rem <fragment>
   Set myDocument = myInDesign.Documents.Item(1)
   Set myPage = myDocument.Pages.Item(1)
   Set myTextFrame = myPage.TextFrames.Add
   Rem Set the bounds of the text frame.
   myTextFrame.GeometricBounds = Array(72, 72, 288, 288)
   Rem Enter text in the text frame.
   myTextFrame.Contents = "This is some example text."
   Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function