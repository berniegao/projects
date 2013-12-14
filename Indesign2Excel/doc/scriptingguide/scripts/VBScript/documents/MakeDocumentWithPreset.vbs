Rem MakeDocumentWithPreset.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a new document using the specified document preset.

main

Function main()
   mySetup
   mySnippet
   myTeardown
End Function

Rem <setup>
Function mySetup()
   Rem Creates a document preset if it does not already exist.
   Set myInDesign = CreateObject("InDesign.Application")
   Rem If the document preset "myDocumentPreset" does not already exist, create it.
   Err.Clear
   On Error Resume Next
   Set myDocumentPreset = myInDesign.DocumentPresets.Item("myDocumentPreset")
   If Err.Number <> 0 Then
       Set myDocumentPreset = myInDesign.DocumentPresets.Add
       myDocumentPreset.Name = "myDocumentPreset"
       Err.Clear
   End If
   On Error GoTo 0
   Rem Fill in the properties of the document preset.
   With myDocumentPreset
       .PageHeight = "9i"
       .PageWidth = "7i"
       .Left = "4p"
       .Right = "6p"
       .Top = "4p"
       .Bottom = "9p"
       .ColumnCount = 1
       .DocumentBleedBottomOffset = "3p"
       .DocumentBleedTopOffset = "3p"
       .DocumentBleedInsideOrLeftOffset = "3p"
       .DocumentBleedOutsideOrRightOffset = "3p"
       .FacingPages = True
       .PageOrientation = idPageOrientation.idPortrait
       .PagesPerDocument = 1
       .SlugBottomOffset = "18p"
       .SlugTopOffset = "3p"
       .SlugInsideOrLeftOffset = "3p"
       .SlugRightOrOutsideOffset = "3p"
   End With
End Function
Rem </setup>

Rem <snippet>
Function mySnippet()
   Rem <fragment>
   Rem Creates a new document using the specified document preset.
   Set myInDesign = CreateObject("InDesign.Application")
   Rem Replace "myDocumentPreset" in the following line with the name
   Rem of the document preset you want to use.
   Set myDocumentPreset = myInDesign.DocumentPresets.Item("myDocumentPreset")
   Set myDocument = myInDesign.Documents.Add(True, myDocumentPreset)
   Rem </fragment>
End Function
Rem </snippet>

Rem <teardown>
Function myTeardown()
End Function
Rem </teardown>