Rem ExportAllText.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Moves all of the text in the active document to a new
Rem document and then exports the text as a single
Rem text file.
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
	myDocument.ViewPreferences.RulerOrigin = idRulerOrigin.idPageOrigin
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrameA = myPage.TextFrames.Add
	myTextFrameA.geometricBounds = Array(72, 72, 144, 288)
	myTextFrameA.Contents = "This is story 1."
	Set myTextFrameB = myPage.TextFrames.Add
	myTextFrameB.geometricBounds = Array(228, 72, 300, 288)
	myTextFrameB.Contents = "This is story 2."
	Set myTextFrameC = myPage.TextFrames.Add
	myTextFrameC.geometricBounds = Array(312, 72, 444, 288)
	myTextFrameC.Contents = "This is story 3/"
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	If myInDesign.Documents.Count <> 0 Then
		If myInDesign.Documents.Item(1).Stories.Count <> 0 Then
			myExportAllText myInDesign, myInDesign.Documents.Item(1).Name
		End If
	End If
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem <fragment>
Function myExportAllText(myInDesign, myDocumentName)
   mySeparatorString = "----------------------------------------" & vbCr
   Rem If you want to add a separator line between stories, 
   Rem set myAddSeparator to true.
   myAddSeparator = True
   Set myNewDocument = myInDesign.Documents.Add
   Set myDocument = myInDesign.Documents.Item(myDocumentName)
   Set myTextFrame = myNewDocument.Pages.Item(1).TextFrames.Add
   myTextFrame.geometricBounds = myGetBounds(myNewDocument, myNewDocument.Pages.Item(1))
   Set myNewStory = myTextFrame.ParentStory
   For myCounter = 1 To myDocument.Stories.Count
     Set myStory = myDocument.Stories.Item(myCounter)
     myStory.texts.item(1).duplicate idLocationOptions.idAfter, myNewStory.InsertionPoints.Item(1)
     Rem If the text did not end with a return, enter a return
     Rem to keep the stories from running together.
     If myCounter <> myDocument.Stories.Count Then
         If myNewStory.Characters.Item(-1).Contents <> vbCr Then
             myNewStory.InsertionPoints.Item(-1).Contents = vbCr
         End If
         If myAddSeparator = True Then
             myNewStory.InsertionPoints.Item(-1).Contents = mySeparatorString
         End If
     End If
   Next
   myNewStory.Export idExportFormat.idTaggedText, "c:\test.txt"
   myNewDocument.Close idSaveOptions.idNo
End Function
Rem </fragment>
Function myGetBounds(myDocument, myPage)
	myPageWidth = myDocument.DocumentPreferences.PageWidth
	myPageHeight = myDocument.DocumentPreferences.PageHeight
	If myPage.Side = idPageSideOptions.idLeftHand Then
		myX2 = myPage.MarginPreferences.Left
		myX1 = myPage.MarginPreferences.Right
	Else
		myX1 = myPage.MarginPreferences.Left
		myX2 = myPage.MarginPreferences.Right
	End If
	myY1 = myPage.marginPreferences.Top
	myX2 = myPageWidth - myX2
	myY2 = myPageHeight - myPage.MarginPreferences.Bottom
	myGetBounds =  Array(myY1, myX1, myY2, myX2)
End Function