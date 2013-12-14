Rem ApplicationPageMargins.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to sets the application default page margins.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
    Rem Shows how to sets the application default page margins. All
    Rem new documents will be created using these settings. Existing
    Rem documents will be unaffected.
    Rem <fragment>
    With myInDesign.MarginPreferences
        Rem Save the current application default margin preferences.
        myY1 = .Top
        myX1 = .Left
        myY2 = .Bottom
        myX2 = .Right
        Rem Set the application default margin preferences.
        .Top = 0
        .Left = 0
        .Bottom = 0
        .Right = 0
    End With
    Rem Create a new example document to demonstrate the change.
    Set myDocument = myInDesign.Documents.Add
    Rem At this point, you can set your page size to a small width and
    Rem height (1x1 picas minimum).
    myDocument.DocumentPreferences.PageHeight = "1p"
    myDocument.DocumentPreferences.PageWidth = "1p"
    Rem Reset the application default margin preferences to their former state.
    With myInDesign.MarginPreferences
        .Top = myY1
        .Left = myX1
        .Bottom = myY2
        .Right = myX2
    End With
    Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function