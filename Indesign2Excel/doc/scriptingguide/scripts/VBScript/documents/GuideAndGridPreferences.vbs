Rem GuideAndGridPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets preferences for guides and grids.
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
	Rem Sets preferences for guides and grids.
	Set myDocument = myInDesign.Documents.Item(1)
	With myDocument.GuidePreferences
		.GuidesInBack = True
		.GuidesLocked = False
		.GuidesShown = True
		.GuidesSnapto = True
	End With
	With myDocument.GridPreferences
		.DocumentGridShown = False
		.DocumentGridSnapto = True
	Rem Objects "snap" to the baseline grid when
	Rem GuidePreferences.GuideSnapTo is set to true.
	.BaselineGridShown = True
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function