Rem LayerGuides.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to work with guides on a specific layer.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	With myDocument.Pages.Item(1)
	    With .Guides.Add
		    .location = 72
		    .orientation = idHorizontalOrVertical.idHorizontal
	    End With
	    
	    With .Guides.Add
		    .location = 144
		    .orientation = idHorizontalOrVertical.idHorizontal
	    End With
	    
	    With .Guides.Add
		    .location = 72
		    .orientation = idHorizontalOrVertical.idVertical
	    End With

	    With .Guides.Add
		    .location = 144
		    .orientation = idHorizontalOrVertical.idVertical
	    End With
	End With
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Rem <fragment>
	Rem Given a document "myDocument" and a page "myPage" containing at least one guide...
	Set myLayer = myDocument.Layers.Add
	Rem Move all of the guides on the page to the new layer.
	For myCounter = 1 To myPage.Guides.Count
		myPage.Guides.Item(myCounter).ItemLayer = myLayer
	Next
	myLayer.LockGuides = True
	myLayer.ShowGuides = True
	Rem <fragment>
End Function
Function myTeardown(myInDesign)
End Function