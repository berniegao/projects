Rem BleedSlugGuideColors.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to set the colors used to display the bleed and slug guides.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
   Rem <fragment>
   Set myDocument = myInDesign.Documents.Item(1)
   With myDocument.PasteboardPreferences
       Rem Any of InDesign's guides can use the UIColors constants...
       .BleedGuideColor = idUIColors.idCuteTeal
       .SlugGuideColor = idUIColors.idCharcoal
       Rem ...or you can specify an array of RGB values (with values from 0 to 255)
       .BleedGuideColor = Array(0, 198, 192)
       .SlugGuideColor = Array(192, 192, 192)
   End With
   Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function