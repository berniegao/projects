REM PersistedTextFrameFill.vbs
REM An InDesign CS6 VBScript
REM 
REM Shows how to set rules on a text frame to determine how it grows when the user inputs text. 
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
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myTextFrame = myDocument.Pages.item(1).TextFrames.Add
	REM Set the bounds of the text frame.
	myTextFrame.GeometricBounds = Array(72, 72, 96, 288)
	REM Fill the text frame with placeholder text.
	myTextFrame.Contents = idTextFrameContents.idPlaceholderText
     Set myTextFrame2 = myDocument.Pages.item(1).TextFrames.Add
	REM Set the bounds of the text frame.
	myTextFrame2.GeometricBounds = Array(156, 72, 180, 288)
	REM Fill the text frame with placeholder text.
	myTextFrame2.Contents = idTextFrameContents.idPlaceholderText
    Set myTextFrame3 = myDocument.Pages.item(1).TextFrames.Add
	REM Set the bounds of the text frame.
	myTextFrame3.GeometricBounds = Array(230, 72, 254, 288)
	REM Fill the text frame with placeholder text.
	myTextFrame3.Contents = idTextFrameContents.idPlaceholderText
    Set myTextFrame4 = myDocument.Pages.item(1).TextFrames.Add
	REM Set the bounds of the text frame.
	myTextFrame4.GeometricBounds = Array(304, 72, 328, 288)
	REM Fill the text frame with placeholder text.
	myTextFrame4.Contents = idTextFrameContents.idPlaceholderText
End Function
REM </setup>
REM <snippet>
Function mySnippet(myInDesign)
	REM <fragment>
	Set myDocument = myInDesign.Documents.item(1)
	Set myTextFrame = myDocument.Pages.item(1).TextFrames.item(4)
	REM Now add text at the end of the text frame.
	myTextFrame.InsertionPoints.item(-1).Contents = vbCr&"This is some overset text"
	MsgBox("The last paragraph in this alert should be ""This is some overset text"". Is it?" & _
        vbCr&myTextFrame.Contents)
	MsgBox("The last paragraph in this alert should be ""This is some overset text"". Is it?" & _
        vbCr&myTextFrame.ParentStory.Contents)
    Set myTextFrame2 = myDocument.Pages.item(1).TextFrames.item(3)
    REM Set auto size dimension of the text frame
    with myTextFrame2.TextFramePreferences
        .AutoSizingDimension=idAutoSizingDimension.idHEIGHTANDWIDTHPROPORTIONALLY
    End With
	REM Now add text at the end of the text frame.
	myTextFrame2.InsertionPoints.item(-1).Contents = vbCr&"This is some overset text"
    Set myTextFrame3 = myDocument.Pages.item(1).TextFrames.item(2)
    REM Set auto size dimension of the text frame 
    REM useMinimumHeightForAutoSizing and useNoLineBreaksForAutoSizing
    with myTextFrame3.TextFramePreferences
        .AutoSizingDimension=idAutoSizingDimension.idHEIGHTONLY
        .UseMinimumHeightForAutoSizing=true
        .UseNoLineBreaksForAutoSizing=true
    End With
	REM Now add text at the end of the text frame.
	myTextFrame3.InsertionPoints.item(-1).Contents = vbCr&"This is some overset text"  
    Set myTextFrame4 = myDocument.Pages.item(1).TextFrames.item(1)
    REM Set auto size dimension of the text frame and autoSizingReferencePoint
    with myTextFrame4.TextFramePreferences
        .AutoSizingDimension=idAutoSizingDimension.idWIDTHONLY
        .AutoSizingReferencePoint=idAutoSizingReferencePoint.idTOPLEFTPOSITION
    End With
	REM Now add text at the end of the text frame.
	myTextFrame4.InsertionPoints.item(-1).Contents = vbCr&"This is some overset text"
	REM </fragment>
End Function
REM </snippet>
REM <teardown>
Function myTeardown(myInDesign)
End Function
REM </teardown>