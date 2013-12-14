Rem Guides.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a series of example guides.
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
	myPageWidth = myDocument.DocumentPreferences.PageWidth
	myPageHeight = myDocument.DocumentPreferences.PageHeight
	Set myPage = myDocument.Pages.Item(1)
	With myPage
		Set myMarginPreferences = .MarginPreferences
		Rem Place guides at the margins of the page.
		With .Guides.Add
			.Orientation = idHorizontalOrVertical.idVertical
			.Location = myMarginPreferences.Left
		End With
		With .Guides.Add
			.Orientation = idHorizontalOrVertical.idVertical
			.Location = (myPageWidth - myMarginPreferences.Right)
		End With
		With .Guides.Add
			.Orientation = idHorizontalOrVertical.idHorizontal
			.Location = myMarginPreferences.Top
		End With
		With .Guides.Add
			.Orientation = idHorizontalOrVertical.idHorizontal
			.Location = (myPageHeight - myMarginPreferences.Bottom)
		End With
		Rem Place a guide at the vertical center of the page.
		With .Guides.Add
			.Orientation = idHorizontalOrVertical.idVertical
			.Location = (myPageWidth / 2)
		End With
		Rem Place a guide at the horizontal center of the page.
		With .Guides.Add
			.Orientation = idHorizontalOrVertical.idHorizontal
			.Location = (myPageHeight / 2)
		End With
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function