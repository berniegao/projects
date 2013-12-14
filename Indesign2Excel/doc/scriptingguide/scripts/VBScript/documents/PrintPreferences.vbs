Rem PrintPreferences.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets the print preferences of the active document.
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
    With myDocument.PrintPreferences
        Rem Properties corresponding to the controls in the General panel of the
        Rem Print dialog box. ActivePrinterPreset is ignored in this example--we'll
        Rem set our own print preferences.
        Rem
        Rem Printer can be either a string (the name of the printer) or
        Rem idPrinter.idPostscriptFile.
        .Printer = idPrinter.idPostscriptFile
        Rem
        Rem If the Printer property is the name of a printer, then the ppd property
        Rem is locked (and will return an error if you try to set it).
        On Error Resume Next
		.ppd = "AGFA-SelectSet5000SF"
		If Err.Number <> 0 Then
			Err.Clear
		End If
        Rem If the Printer property is set to Printer.postscript file, the copies
        Rem property is unavailable. Attempting to set it will generate an error.
        Rem .Copies = 1
        Rem
        Rem If the Printer property is set to Printer.postscript file, or if the
        Rem selected printer does not support collation, then the Collating
        Rem property is unavailable. Attempting to set it will generate an error.
        Rem .Collating = false
        Rem
        .ReverseOrder = False
        Rem
        Rem PageRange can be either idPageRange.idAllPages or a page range string.
        .PageRange = idPageRange.idAllPages
        Rem
        .PrintSpreads = False
        .PrintMasterPages = False
        Rem If the Printer property is set to Printer.postScript file, then
        Rem the printFile property contains the file path to the output file.
        .PrintFile = "c:\test.ps"
        .Sequence = idSequences.idAll
        Rem If trapping is set to either idTrapping.idApplicationBuiltIn or
        Rem idTrapping.idAdobeInRIP, then setting the following properties 
        Rem will produce an error.
		If (.ColorOutput = idColorOutputModes.idInRIPSeparations) Or _
		(.ColorOutput = idColorOutputModes.idSeparations) Then
			If .Trapping = idTrapping.idOff Then
				.PrintBlankPages = False
				.PrintGuidesGrids = False
				.PrintNonprinting = False
			End If
		End If
        Rem Properties corresponding to the controls in the 
        Rem Setup panel of the Print dialog box.
        On Error Resume Next
        .PaperSize = idPaperSizes.idCustom        
        .PaperHeight = 1200
        .PaperWidth = 1200
        .PrintPageOrientation = idPrintPageOrientation.idPortrait
        .PagePosition = idPagePositions.idCentered
        .PaperGap = 0
        .PaperOffset = 0
        .PaperTransverse = False
        If Err.Number <> 0 Then
        	Err.Clear
        End If
        On Error Resume Next
        .ScaleHeight = 100
        .ScaleWidth = 100
        .ScaleMode = idScaleModes.idScaleWidthHeight
        .ScaleProportional = True
        Rem If trapping is set to either idTrapping.idApplicationBuiltIn or
        Rem idTrapping.idAdobeInRIP, then setting the following properties will
        Rem produce an error.
		If (.ColorOutput = idColorOutputModes.idInRIPSeparations) Or _
		(.ColorOutput = idColorOutputModes.idSeparations) Then
			If .Trapping = idTrapping.idOff Then
				.TextAsBlack = False
				.Thumbnails = False
				Rem The following properties is not needed because thumbnails is set
				Rem to false.
				Rem thumbnailsPerPage = 4
				.Tile = False
				Rem The following properties are not needed because tile is set to
				Rem false.
				Rem .TilingOverlap = 12
				Rem .TilingType = TilingTypes.auto
			End If
		End If
		Rem
        Rem Properties corresponding to the controls in the Marks and Bleed panel of
        Rem the Print dialog box.
		Rem
		Rem Set the following property to true to print all printer's marks.
        Rem .AllPrinterMarks = true
        .UseDocumentBleedToPrint = False
        Rem If useDocumentBleedToPrint = false then setting any of the  bleed
        Rem properties will result in an error.
        Rem Get the bleed amounts from the document's bleed and add a bit.
        Set myDocumentPreferences = myDocument.DocumentPreferences
        .BleedBottom = myDocumentPreferences.DocumentBleedBottomOffset + 3
        .BleedTop = myDocumentPreferences.DocumentBleedTopOffset + 3
        .BleedInside = myDocumentPreferences.DocumentBleedInsideOrLeftOffset + 3
        .BleedOutside = myDocumentPreferences.DocumentBleedOutsideOrRightOffset + 3
        Rem If any bleed area is greater than zero, then print the bleed marks.
        if (.BleedBottom or .BleedTop or .BleedInside or .BleedOutside) Then
            .BleedMarks = True
        Else
            .BleedMarks = False
        End If
        .ColorBars = True
        .CropMarks = True
        .IncludeSlugToPrint = False
        .MarkLineWeight = idMarkLineWeight.idP125pt
        .MarkOffset = 6
        Rem .MarkType = MarkTypes.default
        .PageInformationMarks = True
        .RegistrationMarks = True
        Rem
        Rem Properties corresponding to the controls in the 
        Rem Output panel of the Print dialog box.
        Rem
        .Negative = True
        .ColorOutput = idColorOutputModes.idSeparations
        Rem Note the lowercase "i" in "Builtin"
        .Trapping = idTrapping.idApplicationBuiltin
        .Screening = "175 lpi/2400 dpi"
        .Flip = idFlip.idNone
        Rem The following options are only applicable if trapping is set to
        Rem idTrapping.idAdobeInRIP.
        If .Trapping = idTrapping.idAdobeInRIP Then
            .PrintBlack = True
            .PrintCyan = True
            .PrintMagenta = True
            .PrintYellow = True
        End If
        Rem Only change the ink angle and frequency when you want to override the
        Rem screening set by the screening specified by the screening property.
        Rem .BlackAngle = 45
        Rem .BlackFrequency = 175
        Rem .CyanAngle = 15
        Rem .CyanFrequency = 175
        Rem .MagentaAngle = 75
        Rem .MagentaFreqency = 175
        Rem .YellowAngle = 0
        Rem .YellowFrequency = 175
        Rem The following properties are not needed (because colorOutput is set to
        Rem separations).
        Rem .CompositeAngle = 45
        Rem .CompositeFrequency = 175
        Rem .SimulateOverprint = false
        Rem
        Rem Properties corresponding to the controls in 
        Rem the Graphics panel of the Print dialog box.
        Rem
        .SendImageData = idImageDataTypes.idAllImageData
        .FontDownloading = idFontDownloading.idComplete
        Err.Clear
        On Error Resume Next
            .DownloadPPDFonts = True
            .DataFormat = idDataFormat.idBinary
            .PostScriptLevel = idPostScriptLevels.idLevel3
            If Err.Number <> 0 Then
                Err.Clear
            End If
        On Error GoTo 0
        Rem
        Rem Properties corresponding to the controls in 
        Rem the Color Management panel of the Print dialog box.
        Rem
        Rem If the UseColorManagement property of myInDesign.ColorSettings is false,
		Rem attempting to set the following properties will return an error.
        Err.Clear
		On Error Resume Next
		.SourceSpace = SourceSpaces.useDocument
		.Intent = RenderingIntent.useColorSettings
		.CRD = ColorRenderingDictionary.useDocument
		.Profile = Profile.postscriptCMS
		If Err.Number <> 0 Then
			Err.Clear
		End If
		On Error GoTo 0
        Rem
        Rem Properties corresponding to the controls in 
        Rem the Advanced panel of the Print dialog box.
        Rem
        .OPIImageReplacement = False
        .OmitBitmaps = False
        .OmitEPS = False
        .OmitPDF = False
		Err.Clear
		On Error Resume Next
		.FlattenerPresetName = "high quality flattener"
		If Err.Number <> 0 Then
			Err.Clear
		End If
		On Error GoTo 0
        .IgnoreSpreadOverrides = False
    End With
    Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function