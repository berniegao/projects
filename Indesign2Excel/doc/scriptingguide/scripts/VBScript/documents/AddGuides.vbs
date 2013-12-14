Rem AddGuides.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to add guide slice for guide based layout policy.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
REM <setup>
Function mySetup(myInDesign)	
End Function
REM </setup>
REM <snippet>
Function mySnippet(myInDesign)

	Rem<fragment>
    Set myDocument = myInDesign.Documents.Add
	Rem Create a text frame on the current page.
	Set myPage = myDocument.Pages.Item(1)
    Rem Set layout policy 
    Rem Use guide slicing to resize objects on the page as it resizes.
    myPage.LayoutRule = idLayoutRuleOptions.idGUIDEBASED
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
	myTextFrame.Contents = "This is guide-based LayoutRule sample doc."
	Set myItem = myPage.Rectangles.Add
	myItem.GeometricBounds = Array(20, 20, 70, 70)

    With myDocument
        Set myGuide = .Guides.Add
        myGuide.GuideType = idGuideTypeOptions.idLIQUID
        myGuide.Location = 20
        myGuide.orientation = idHorizontalOrVertical.idHorizontal
    End With
	Rem</fragment>
End Function
REM </snippet>
REM <teardown>
Function myTeardown(myInDesign)
End Function
REM </teardown>
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