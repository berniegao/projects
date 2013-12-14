REM CreateAlternateLayout.vbs
REM An InDesign CS6 VBScript
REM 
REM Shows how to create alternate layout.
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
    For myCounter = myInDesign.Documents.Count To 1 Step -1
        myInDesign.Documents.Item(myCounter).Close idSaveOptions.idNo
    Next
    REM <fragment>        
    Set myDoc = myInDesign.Documents.Add
    With myDoc.DocumentPreferences
        .facingPages=false
        .pagesPerDocument=1
        .pageWidth=1024
        .pageHeight=768
    End With
    REM Reposition and resize objects on the page as it resizes.
    myDoc.Pages.item(1).LayoutRule = idLayoutRuleOptions.idOBJECTBASED 
     With myDoc
        Set myItem = .Pages.Item(1).Rectangles.Add
        myItem.GeometricBounds=Array(50,50,100,100)  
    End With
    REM create alternate layout 
    myDoc.CreateAlternateLayout myDoc.Spreads, "new layout", _
                                myDoc.DocumentPreferences.PageHeight, _
                                myDoc.DocumentPreferences.PageWidth, _
                                true, true, _
                                idLayoutRuleOptions.idPRESERVEEXISTING
    REM </fragment>
End Function
REM </snippet>
REM <teardown>
Function myTeardown(myInDesign)
End Function
REM </teardown>



 
 