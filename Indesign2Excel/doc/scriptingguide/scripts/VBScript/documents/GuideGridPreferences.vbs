Rem GuideAndGridPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to set preferences for guides and grids.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	With myDocument.ViewPreferences
		.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
		.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	End With
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	With myDocument.GuidePreferences
		.GuidesInBack = True
		.GuidesLocked = False
		.GuidesShown = True
		.GuidesSnapto = True
		Rem Colors can be an idUIColors enumeration ...
		.RulerGuidesColor = idUIColors.idCuteTeal
		Rem ... or an array of RGB values.
		.RulerGuidesColor = Array(0, 198, 192)
		.RulerGuidesViewThreshold = 50 
	End With
	Dim myBaselineGridRelativeOption 
	myBaselineGridRelativeOption = idBaselineGridRelativeOption.idTopOfMarginOfBaselineGridRelativeOption
	Rem Set BaselineGridRelativeOption = idBaselineGridRelativeOption.idTopOfPageOfBaselineGridRelativeOption
	With myDocument.gridPreferences
		.BaselineStart = 88
		.BaselineGridRelativeOption = myBaselineGridRelativeOption
		.BaselineColor = idUIColors.idLightBlue
		.BaselineDivision = 22
		.BaselineGridShown = True
		.BaselineViewThreshold = 75
		.DocumentGridSnapTo = True
		.DocumentGridShown = False
		.GridColor = idUIColors.idCharcoal
		.HorizontalGridlineDivision = 1
		.HorizontalGridSubdivision = 4
		.VerticalGridlineDivision = 1
		.VerticalGridSubdivision = 4
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function