Rem PlaceSound.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to import a sound file.
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
    Rem Import a sound file (you'll have to provide a valid file path on your system)
    Set mySound = myPage.Place("c:\sound.mp3", Array(72, 72)).Item(1)
    Rem Set sound properties.
    mySound.EmbedInPDF = True
    mySound.DoNotPrintPoster = True
    mySound.SoundLoop = True
    mySound.StopOnPageTurn = True
    Rem Add a preview image. You'll have to provide a valid path on your system.
    mySound.PosterFile = "c:\sound poster.jpg"
    Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
