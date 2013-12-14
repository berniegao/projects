Rem MasterSpread.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Demonstrates setting master spread properties.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Rem Set up the document.
	With myDocument.DocumentPreferences
		.PageHeight = "11i"
		.PageWidth = "8.5i"
		.FacingPages = True
		.PageOrientation = idPageOrientation.idPortrait
	End With
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Rem Set the document's ruler origin to page origin.
	myDocument.ViewPreferences.RulerOrigin = idRulerOrigin.idPageOrigin
	With myDocument.MasterSpreads.Item(1)
		mySectionMarker = idSpecialCharacters.idSectionMarker
		myEmSpace = idSpecialCharacters.idEmSpace
		myAutoPageNumber = idSpecialCharacters.idAutoPageNumber
		Rem Set up the left page (verso).
		With .Pages.Item(1)
			With .MarginPreferences
				.ColumnCount = 3
				.ColumnGutter = "1p"
				.Bottom = "6p"
				Rem "left" means inside "right" means outside.
				.Left = "6p"
				.Right = "4p"
				.Top = "4p"
			End With
			Rem Add a simple footer with a section number and page number.
			With .TextFrames.Add
				.GeometricBounds = Array("61p", "4p", "62p", "45p")
				.InsertionPoints.Item(1).Contents = mySectionMarker
				.InsertionPoints.Item(1).Contents = myEmSpace
				.InsertionPoints.Item(1).Contents = myAutoPageNumber
				.Paragraphs.Item(1).Justification = idJustification.idLeftAlign
			End With
		End With
		Rem Set up the right page (recto).
		With .Pages.Item(2)
			With .MarginPreferences
				.ColumnCount = 3
				.ColumnGutter = "1p"
				.Bottom = "6p"
				Rem "left" means inside "right" means outside.
				.Left = "6p"
				.Right = "4p"
				.Top = "4p"
			End With
			Rem Add a simple footer with a section number and page number.
			With .TextFrames.Add
				.GeometricBounds = Array("61p", "6p", "62p", "47p")
				.InsertionPoints.Item(1).Contents = myAutoPageNumber
				.InsertionPoints.Item(1).Contents = myEmSpace
				.InsertionPoints.Item(1).Contents = mySectionMarker
				.Paragraphs.Item(1).Justification = idJustification.idRightAlign
			End With
		End With
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function   