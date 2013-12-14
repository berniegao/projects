REM LiquidLayout.vbs
REM An InDesign CS6 VBScript
REM 
REM Shows how to set layout policy for document.
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
  REM <fragment>
  Set doc = myInDesign.Documents.Add
  Set myPage = doc.Pages.item(1)
  REM Set layout policy to LayoutRuleOptions.OBJECT_BASED
  myPage.LayoutRule = idLayoutRuleOptions.idOBJECTBASED 
  REM Create a text frame on the first page.
  Set myTextFrame = myPage.TextFrames.Add
  myTextFrame.GeometricBounds=myGetBounds(doc, myPage)
  myTextFrame.Contents="This is object-based LayoutRule sample doc."
  REM Create a rectangle
  Set myItem = myPage.Rectangles.Add
  myItem.GeometricBounds=Array(20,20,70,70)
  myItem.VerticalLayoutConstraints = _
          Array(idDimensionsConstraints.idFlexibleDimension, _
                idDimensionsConstraints.idFlexibleDimension, _
                idDimensionsConstraints.idFlexibleDimension)
  myItem.HorizontalLayoutConstraints = _
          Array(idDimensionsConstraints.idFixedDimension, _
                idDimensionsConstraints.idflexibleDimension, _
                idDimensionsConstraints.idFlexibleDimension)
  
  Set doc2 = myInDesign.Documents.Add()
  Set myPage2 = doc2.Pages.item(1)
  REM Set layout policy to LayoutRuleOptions.SCALE
  myPage2.LayoutRule = idLayoutRuleOptions.idSCALE  
  REM Create a text frame on the first page.
  Set myTextFrame2 = myPage2.TextFrames.Add
  myTextFrame2.GeometricBounds=myGetBounds(doc2, myPage2)
  myTextFrame2.Contents="This is scale LayoutRule sample doc."
  Set myItem2 = myPage2.Rectangles.Add
  myItem2.GeometricBounds=Array(20,20,70,70)
  
  Set doc3 = myInDesign.Documents.Add
  Set myPage3 = doc3.Pages.item(1)
  REM Set layout policy to LayoutRuleOptions.RECENTER
  myPage3.LayoutRule = idLayoutRuleOptions.idRECENTER  
  REM Create a text frame on the first page.
  Set myTextFrame3 = myPage3.TextFrames.Add
  myTextFrame3.GeometricBounds=myGetBounds(doc3, myPage3)
  myTextFrame3.Contents="This is recenter LayoutRule sample doc."
  Set myItem3 = myPage3.Rectangles.Add
  myItem3.GeometricBounds=Array(20,20,70,70)
   
  Set doc4 = myInDesign.Documents.Add
  Set myPage4 = doc4.Pages.item(1)
  REM Set layout policy to LayoutRuleOptions.GUIDE_BASED
  myPage4.LayoutRule = idLayoutRuleOptions.idGUIDEBASED 
  REM Create a text frame on the first page.
  Set myTextFrame4 = myPage4.TextFrames.Add
  myTextFrame4.GeometricBounds=myGetBounds(doc4, myPage4)
  myTextFrame4.Contents="This is guide-based LayoutRule sample doc."
  Set myItem4 = myPage4.Rectangles.Add
  myItem4.GeometricBounds=Array(20,20,70,70)
  with doc4
      With .Guides.Add
      .GuideType=idGuideTypeOptions.idLIQUID
      .Location="40"
      .Orientation=idHorizontalOrVertical.idHorizontal
      End With
  End With
  
  Set doc5 = myInDesign.Documents.Add
  Set myPage5 = doc5.Pages.item(1)
  REM Set layout policy to LayoutRuleOptions.USE_MASTER
  myPage5.LayoutRule = idLayoutRuleOptions.idUSEMASTER
  REM Create a text frame on the first page.
  Set myTextFrame5 = myPage5.TextFrames.Add
  myTextFrame5.GeometricBounds=myGetBounds(doc5, myPage5)
  myTextFrame5.Contents="This is master page LayoutRule sample doc."
  Set myItem5 = myPage5.Rectangles.Add
  myItem5.GeometricBounds=Array(20,20,70,70)
  REM </fragment>
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
    End if
    myY1 = myPage.MarginPreferences.Top
    myX2 = myPageWidth - myX2
    myY2 = myPageHeight - myPage.MarginPreferences.Bottom
    myGetBounds=Array(myY1, myX1, myY2, myX2)
End Function 