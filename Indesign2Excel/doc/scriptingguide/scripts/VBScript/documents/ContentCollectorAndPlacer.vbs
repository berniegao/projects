REM ContentCollectorAndPlacer.vbs
REM An InDesign CS6 VBScript
REM 
REM Use content placer to load page items in one document and place them to another document
main
Function main()
    Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
REM <setup>
Function mySetup(myInDesign)
    Set myDocument = myInDesign.Documents.Add
    With myDocument.DocumentPreferences
        .pageHeight = "600pt"
        .pageWidth = "800pt"
        .pageOrientation = idPageOrientation.idPortrait
        .PagesPerDocument = 1
    End With
    Set myDocument1 = myInDesign.Documents.Add
    With myDocument1.DocumentPreferences
        .pageHeight = "600pt"
        .pageWidth = "800pt"
        .pageOrientation = idPageOrientation.idPortrait
        .PagesPerDocument = 1
    End With
End Function
REM </setup>
REM <snippet>
Function mySnippet(myInDesign)
    Set myDocument = myInDesign.Documents.Item(1)
    Set myPage = myDocument.Pages.Item(1)
    Set myDocument1 = myInDesign.Documents.Item(2)
    Set myPage1 = myDocument1.Pages.Item(1)
    REM Create a textframe
    Set myTextFrame = myPage.TextFrames.Add
    myTextFrame.GeometricBounds = Array(15, 15, 25, 50)
    myTextFrame.Contents = "I am a text frame"
    REM Create a checkbox
    Set myCheckBox = myPage.CheckBoxes.Add
    myCheckBox.GeometricBounds = Array(5, 5, 10, 10)
    myCheckBox.Name = "I am a check box"
    REM Create a button
    Set myButton = myPage.Buttons.Add
    myButton.GeometricBounds = Array(45, 15, 35, 35)
    myButton.Name = "I am a button"
    REM Create a rectangle frame
    Set myRectangle = myPage.Rectangles.Add
    myRectangle.GeometricBounds = Array(45, 75, 35, 45)
    myRectangle.Name = "I am a rectangle"
    REM Create an oval frame
    Set myOval = myPage.Ovals.Add
    myOval.GeometricBounds = Array(75, 15, 50, 35)
    myOval.Name = "I am an oval"
    REM Create a polygon frame
    Set myPolygon = myPage.Polygons.Add
    myPolygon.Name = "I am a polygon"
    myPolygon.Paths.Item(1).EntirePath = Array(Array(12, 12), Array(22, 22), Array(32, 12)) 
    REM Get content placer
    Set contentPlacer = myInDesign.ContentPlacer    
    REM Need to save the document before invoking Page.contentPlace
    myDocument.Save "C:\ContentCollectorAndPlacer.indd"
    REM <fragment>
    REM Invoke Page.contentPlace with default parameters
    myPage1.ContentPlace(myPage.TextFrames)
    REM </fragment>
    REM <fragment>
    REM Invoke Page.contentPlace with full parameters
    myPage1.ContentPlace myPage.checkBoxes, _
                                      true, _
                                      true, _
                                      true, _
                                      Array(0, 0, 40, 40), _
                                      myDocument1.ActiveLayer, _
                                      true
    REM </fragment>
    REM <fragment>
    REM Invoke load with default paramenters, then invoke Page.contentPlace with default parameters
    contentPlacer.load(myPage.Ovals)
    REM Need to save the document before invoking Page.contentPlace
    myDocument.Save "C:\ContentCollectorAndPlacer.indd"
    REM Invoke contentPlace with default parameters
    myPage1.ContentPlace(myPage.Ovals)    
    REM </fragment>
    REM <fragment>
    REM Invoke load with default paramenters, then invoke Page.contentPlace with full parameters
    contentPlacer.load(myPage.Buttons)
    REM Need to save the document before invoking Page.contentPlace
    myDocument.Save "C:\ContentCollectorAndPlacer.indd"
    REM Invoke contentPlace with full parameters
    myPage1.contentPlace myPage.Buttons, true, true, true, Array(0, 0, 40, 40), myDocument1.ActiveLayer, true
    REM </fragment>
    REM <fragment>
    REM Invoke load with full parameters,  then invoke Page.contentPlace with default parameters
    contentPlacer.load myPage.Polygons, true, true, true, true
    REM Need to save the document before invoking Page.contentPlace
    myDocument.Save "C:\ContentCollectorAndPlacer.indd"
    REM Invoke contentPlace with default parameters
    myPage1.ContentPlace(myPage.Polygons)
    REM </fragment>
    REM <fragment>
    REM Invoke load with full parameters,  then invoke Page.contentPlace with full parameters
    contentPlacer.load myPage.Rectangles, true, true, true, true
    REM Need to save the document before invoking Page.contentPlace
    myDocument.Save "C:\ContentCollectorAndPlacer.indd"
    REM Invoke contentPlace with full parameters
    myPage1.contentPlace myPage.Rectangles, true, true, true, Array(0, 0, 40, 40), myDocument1.ActiveLayer, true
    REM </fragment>
End Function
REM </snippet>
REM <teardown>
Function myTeardown(myInDesign)
End Function
REM </teardown>