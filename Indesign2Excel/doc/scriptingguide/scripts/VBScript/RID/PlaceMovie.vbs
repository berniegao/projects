Rem PlaceMovie.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to import a movie file.
main
Function main()
    Set myInDesign = CreateObject("InDesign.Application")
    mySetup myInDesign
    mySnippet myInDesign
    myTeardown myInDesign
End Function
Function mySetup(myInDesign)
    Set myDocument = myInDesign.Documents.Add
    myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
    myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
    myDocument.ViewPreferences.RulerOrigin = idRulerOrigin.idPageOrigin
End Function
Function mySnippet(myInDesign)
    Set myDocument = myInDesign.Documents.Item(1)
    Set myPage = myDocument.Pages.Item(1)
    Rem <fragment>
    Rem Given a page "myPage"...
    Set myFrame = myPage.Rectangles.Add
    myFrame.GeometricBounds = Array(72, 72, 288, 288)
    Rem Import a movie file (you'll have to provide a valid file path on your system)
    Set myMovie = myFrame.Place("c:\movie.avi").item(1)
    Rem Set movie properties.
    myMovie.EmbedInPDF = True
    myMovie.ShowControls = True
    Rem Add a preview image. You'll have to provide a valid path on your system.
    myMovie.PosterFile = "c:\movie poster.jpg"
    Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function

