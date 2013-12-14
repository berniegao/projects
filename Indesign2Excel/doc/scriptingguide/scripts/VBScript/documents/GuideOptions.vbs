Rem GuideOptions.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to set guide options.
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
	Set myPage = myDocument.Pages.Item(1)
	Rem Create a layer named "guide layer".
	Set myLayer = myDocument.Layers.Add
	myLayer.Name = "guide layer"
	Rem Add a series of guides to page 1.
	With myPage
		Rem Create a guide on the layer we created above.
		With .Guides.Add(myLayer)
			.Orientation = idHorizontalOrVertical.idHorizontal
			.Location = "12p"
		End With
		Rem Another way to make a guide on a specific layer.
		With .Guides.Add()
			.ItemLayer = myLayer
			.Orientation = idHorizontalOrVertical.idHorizontal
			.Location = "14p"
		End With
			Rem Make a locked guide.
			With .Guides.Add()
			.ItemLayer = myLayer
			.Orientation = idHorizontalOrVertical.idHorizontal
			.Location = "16p"
			.Locked = True
		End With
		Rem Set the view threshold of a guide.
		With .Guides.Add()
			.ItemLayer = myLayer
			.Orientation = idHorizontalOrVertical.idHorizontal
			.Location = "18p"
			.ViewThreshold = 100
		End With
		Rem Set the guide color of a guide using a UIColors constant.
		With .Guides.Add()
			.ItemLayer = myLayer
			.Orientation = idHorizontalOrVertical.idHorizontal
			.Location = "20p"
			.GuideColor = idUIColors.idGray
		End With
		Rem Set the guide color of a guide using an RGB array.
		With .Guides.Add()
			.ItemLayer = myLayer
			.Orientation = idHorizontalOrVertical.idHorizontal
			.Location = "22p"
			.GuideColor = Array(192, 192, 192)
		End With
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function