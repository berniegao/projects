Rem DocumentTemplate.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Creates a document template, including master pages, layers,
Rem a color, paragraph and character styles, guides, and XMP information.
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
	Rem Set the application measurement unit defaults to points.
	Rem <fragment>
	myInDesign.ViewPreferences.HorizontalMeasurementUnits _
	= idMeasurementUnits.idPoints
	myInDesign.ViewPreferences.VerticalMeasurementUnits _
	= idMeasurementUnits.idPoints
	Rem Set the application default margin preferences.
	With myInDesign.MarginPreferences
		Rem Save the current application default margin preferences.
		myY1 = .Top
		myX1 = .Left
		myY2 = .Bottom
		myX2 = .Right
		Rem Set the application default margin preferences.
		Rem Document baseline grid will be based on 14 points, and
		Rem all margins are set in increments of 14 points.
		.Top = 14 * 4
		.Left = 14 * 4
		.Bottom = 74
		.Right = 14 * 5
	End With
	Rem Make a new document.
	Set myDocument = myInDesign.Documents.Add
	myDocument.DocumentPreferences.PageWidth = "7i"
	myDocument.DocumentPreferences.PageHeight = "9i"
	myDocument.DocumentPreferences.PageOrientation = idPageOrientation.idPortrait
	Rem At this point, we can reset the application default margins
	Rem to their original state.
	With myInDesign.MarginPreferences
		.Top = myY1
		.Left = myX1
		.Bottom = myY2
		.Right = myX2
	End With
	Rem Set up the bleed and slug areas.
	With myDocument.DocumentPreferences
		Rem Bleed
		.DocumentBleedBottomOffset = "3p"
		.DocumentBleedTopOffset = "3p"
		.DocumentBleedInsideOrLeftOffset = "3p"
		.DocumentBleedOutsideOrRightOffset = "3p"
		Rem Slug
		.SlugBottomOffset = "18p"
		.SlugTopOffset = "3p"
		.SlugInsideOrLeftOffset = "3p"
		.SlugRightOrOutsideOffset = "3p"
	End With
	Rem Create a color.
	Err.Clear
	On Error Resume Next
	Rem If the color does not already exist, InDesign will generate an error.
	Set myColor = myDocument.Colors.Item("PageNumberRed")
	If Err.Number <> 0 Then
		Set myColor = myDocument.Colors.Add
		myColor.Name = "PageNumberRed"
		myColor.colorModel = idColorModel.idProcess
		myColor.ColorValue = Array(20, 100, 80, 10)
		Err.Clear
	End If
	Rem restore normal error handling
	On Error GoTo 0
	Rem Next, set up some default styles.
	Rem Create up a character style for the page numbers.
	Err.Clear
	On Error Resume Next
	Rem If the character style does not already exist, 
	Rem InDesign will generate an error.
	Set myCharacterStyle = myDocument.CharacterStyles.Item("page_number")
	If Err.Number <> 0 Then
		Set myCharacterStyle = myDocument.CharacterStyles.Add
		myCharacterStyle.Name = "page_number"
		Err.Clear
	End If
	Rem restore normal error handling
	On Error GoTo 0
	myDocument.CharacterStyles.Item("page_number").FillColor _
	= myDocument.Colors.Item("PageNumberRed")
	Rem Create up a pair of paragraph styles for the page footer text.
	Rem These styles have only basic formatting.
	Err.Clear
	On Error Resume Next
	Rem If the paragraph style does not already exist, 
	Rem InDesign will generate an error.
	Set myParagraphStyle = myDocument.ParagraphStyles.Item("footer_left")
	If Err.Number <> 0 Then
		Set myParagraphStyle = myDocument.ParagraphStyles.Add
		myParagraphStyle.Name = "footer_left"
		myParagraphStyle.PointSize = 11
		myParagraphStyle.Leading = 14
		Err.Clear
    End If
	Rem restore normal error handling
	On Error GoTo 0
	Err.Clear
	On Error Resume Next
	Rem If the paragraph style does not already exist, 
	Rem InDesign will generate an error.
	Set myParagraphStyle = myDocument.ParagraphStyles.Item("footer_right")
	If Err.Number <> 0 Then
		Set myParagraphStyle = myDocument.ParagraphStyles.Add
		myParagraphStyle.Name = "footer_right"
		myParagraphStyle.BasedOn = myDocument.ParagraphStyles.Item("footer_left")
		myParagraphStyle.Justification = idJustification.idRightAlign
		myParagraphStyle.PointSize = 11
		myParagraphStyle.Leading = 14
		Err.Clear
	End If
	Rem restore normal error handling
	On Error GoTo 0
	Rem Create a layer for guides.
	Err.Clear
	On Error Resume Next
	Set myLayer = myDocument.Layers.Item("GuideLayer")
	If Err.Number <> 0 Then
		Set myLayer = myDocument.Layers.Add
		myLayer.Name = "GuideLayer"
		Err.Clear
	End If
	Rem restore normal error handling
	On Error GoTo 0
	Rem Create a layer for the footer items.
	Err.Clear
	On Error Resume Next
	Set myLayer = myDocument.Layers.Item("Footer")
	If Err.Number <> 0 Then
		Set myLayer = myDocument.Layers.Add
		myLayer.Name = "Footer"
		Err.Clear
	End If
	Rem restore normal error handling
	On Error GoTo 0
	Rem Create a layer for the slug items.
	Err.Clear
	On Error Resume Next
	Set myLayer = myDocument.Layers.Item("Slug")
	If Err.Number <> 0 Then
		Set myLayer = myDocument.Layers.Add
		myLayer.Name = "Slug"
		Err.Clear
	End If
	Rem restore normal error handling
	On Error GoTo 0
	Rem Create a layer for the body text.
	Err.Clear
	On Error Resume Next
	Set myLayer = myDocument.Layers.Item("BodyText")
		If Err.Number <> 0 Then
		Set myLayer = myDocument.Layers.Add
		myLayer.Name = "BodyText"
		Err.Clear
	End If
	Rem restore normal error handling
	On Error GoTo 0
	With myDocument.ViewPreferences
		.RulerOrigin = idRulerOrigin.idPageOrigin
		.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
		.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	End With
	Rem Document baseline grid and document grid
	With myDocument.GridPreferences
		.BaselineStart = 56
		.BaselineDivision = 14
		.BaselineGridShown = False
		.HorizontalGridlineDivision = 14
		.HorizontalGridSubdivision = 5
		.VerticalGridlineDivision = 14
		.VerticalGridSubdivision = 5
		.DocumentGridShown = False
	End With
	Rem Document XMP information.
	With myDocument.MetadataPreferences
		.Author = "Adobe Systems"
		.CopyrightInfoURL = "http:rem www.adobe.com"
		.CopyrightNotice = "This document is not copyrighted."
		.CopyrightStatus = idCopyrightStatus.idNo
		.Description = "Example 7 x 9 book layout"
		.DocumentTitle = "Example"
		.JobName = "7 x 9 book layout template"
		.Keywords = Array("7 x 9", "book", "template")
		.CreateContainerItem "http://ns.adobe.com/xap/1.0/", "email"
		.SetProperty "http://ns.adobe.com/xap/1.0/", "email/*[1]", _
		"someone@adobe.com"
	End With
	Rem Set up the master spread.
	With myDocument.MasterSpreads.Item(1)
		With .Pages.Item(1)
			Rem Left and right are reversed for left-hand pages (becoming
			Rem "inside" and "outside"--this is also true in the InDesign
			Rem user interface).
			myTopMargin = .MarginPreferences.Top
			myBottomMargin = myDocument.DocumentPreferences.PageHeight _
			- .MarginPreferences.Bottom
            myRightMargin = myDocument.DocumentPreferences.PageWidth _
            - .MarginPreferences.Left
			myLeftMargin = .MarginPreferences.Right
			With .Guides.Add
				.ItemLayer = myDocument.Layers.Item("GuideLayer")
				.Orientation = idHorizontalOrVertical.idVertical
				.Location = myLeftMargin
			End With
			With .Guides.Add
				.ItemLayer = myDocument.Layers.Item("GuideLayer")
				.Orientation = idHorizontalOrVertical.idVertical
				.Location = myRightMargin
			End With
			With .Guides.Add
				.ItemLayer = myDocument.Layers.Item("GuideLayer")
				.Orientation = idHorizontalOrVertical.idHorizontal
				.Location = myTopMargin
				.FitToPage = False
			End With
			With .Guides.Add
				.ItemLayer = myDocument.Layers.Item("GuideLayer")
				.Orientation = idHorizontalOrVertical.idHorizontal
				.Location = myBottomMargin
				.FitToPage = False
			End With
			With .Guides.Add
				.ItemLayer = myDocument.Layers.Item("GuideLayer")
				.Orientation = idHorizontalOrVertical.idHorizontal
				.Location = myBottomMargin + 14
				.FitToPage = False
			End With
			With .Guides.Add
				.ItemLayer = myDocument.Layers.Item("GuideLayer")
				.Orientation = idHorizontalOrVertical.idHorizontal
				.Location = myBottomMargin + 28
			.FitToPage = False
			End With
			Set myLeftFooter = .TextFrames.Add
			myLeftFooter.ItemLayer = myDocument.Layers.Item("Footer")
			myLeftFooter.GeometricBounds = Array(myBottomMargin + 14, _
			.MarginPreferences.Right, _
			myBottomMargin + 28, _
			myRightMargin)
			With myLeftFooter.ParentStory.InsertionPoints.Item(1)
				.Contents = idSpecialCharacters.idSectionMarker
				.Contents = idSpecialCharacters.idEmSpace
				.Contents = idSpecialCharacters.idAutoPageNumber
			End With
			With myLeftFooter.ParentStory.Characters.Item(1)
				.AppliedCharacterStyle = myDocument.CharacterStyles.Item("page_number")
			End With
			With myLeftFooter.ParentStory.Paragraphs.Item(1)
				.AppliedParagraphStyle = myDocument.ParagraphStyles.Item("footer_left")
			End With
			Rem Slug information.
			myDate = Date
			With myDocument.MetadataPreferences
				p1 = "Author:" & vbTab & .Author & vbTab
				p2 = "Description:" & vbTab & .Description & vbCrLf
				p3 = "Creation Date:" & vbTab & myDate & vbTab
				p4 = "Email Contact" & vbTab 
				p5 = .GetProperty("http://ns.adobe.com/xap/1.0/", "email/*[1]")
				myString = p1 & p2 & p3 & p4 & p5
			End With
			Set myLeftSlug = .TextFrames.Add
			myLeftSlug.ItemLayer = myDocument.Layers.Item("Slug")
			myLeftSlug.GeometricBounds _
            = Array(myDocument.DocumentPreferences.PageHeight + 36, _
            .MarginPreferences.Right, _
            myDocument.DocumentPreferences.PageHeight + 144, _
            myRightMargin)
			myLeftSlug.Contents = myString
			myLeftSlug.ParentStory.Texts.Item(1).ConvertToTable
			Rem Body text master text frame.
			Set myLeftFrame = .TextFrames.Add
			myLeftFrame.ItemLayer = myDocument.Layers.Item("BodyText")
			myLeftFrame.GeometricBounds = Array(.MarginPreferences.Top, _
			.MarginPreferences.Right, myBottomMargin, myRightMargin)
		End With
		With .Pages.Item(2)
			myTopMargin = .MarginPreferences.Top
			myBottomMargin = myDocument.DocumentPreferences.PageHeight _
			- .MarginPreferences.Bottom
			myRightMargin = myDocument.DocumentPreferences.PageWidth _
			- .MarginPreferences.Right
			myLeftMargin = .MarginPreferences.Left
			With .Guides.Add
				.ItemLayer = myDocument.Layers.Item("GuideLayer")
				.Orientation = idHorizontalOrVertical.idVertical
				.Location = myLeftMargin
			End With
			With .Guides.Add
				.ItemLayer = myDocument.Layers.Item("GuideLayer")
				.Orientation = idHorizontalOrVertical.idVertical
				.Location = myRightMargin
			End With
			Set myRightFooter = .TextFrames.Add
			myRightFooter.ItemLayer = myDocument.Layers.Item("Footer")
			myRightFooter.GeometricBounds = Array(myBottomMargin + 14, _
			.MarginPreferences.Left, myBottomMargin + 28, myRightMargin)
			With myRightFooter.ParentStory.InsertionPoints.Item(1)
				.Contents = idSpecialCharacters.idAutoPageNumber
				.Contents = idSpecialCharacters.idEmSpace
				.Contents = idSpecialCharacters.idSectionMarker
			End With
			With myRightFooter.ParentStory.Characters.Item(-1)
			.AppliedCharacterStyle _
			= myDocument.CharacterStyles.Item("page_number")
			End With
			With myRightFooter.ParentStory.Paragraphs.Item(1)
				.ApplyParagraphStyle _
				myDocument.ParagraphStyles.Item("footer_right"), _
				False
			End With
			Rem Slug information.
			Set myRightSlug = .TextFrames.Add
			myRightSlug.ItemLayer = myDocument.Layers.Item("Slug")
			myRightSlug.GeometricBounds _
			= Array(myDocument.DocumentPreferences.PageHeight + 36, _
			myLeftMargin, _
			myDocument.DocumentPreferences.PageHeight + 144, _
			myRightMargin)
			myRightSlug.Contents = myString
			myRightSlug.ParentStory.Texts.Item(1).ConvertToTable
			Rem Body text master text frame.
			Set myRightFrame = .TextFrames.Add
			myRightFrame.ItemLayer = myDocument.Layers.Item("BodyText")
			myRightFrame.GeometricBounds = Array(.MarginPreferences.Top, _
			.MarginPreferences.Left, _
			myBottomMargin, _
			myRightMargin)
			myRightFrame.PreviousTextFrame = myLeftFrame
		End With
    End With
    Rem Add section marker text--this text will appear in the footer.
    myDocument.Sections.Item(1).Marker = "Section 1"
    Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function

