Rem XMLRuleLayout.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to apply text formatting using XML rules.

main

Function main()
   mySetup
   mySnippet
   myTeardown
End Function

Function mySetup()
    Set myInDesign = CreateObject("InDesign.Application")
	myFilePath = myFindFile(myInDesign, "\XMLRuleExampleSetup.vbs", "VBS files|*.vbs")
	myInDesign.DoScript myFilePath
End Function

Function mySnippet()
   Rem <fragment>
   Set myInDesign = CreateObject("InDesign.Application")
   If myInDesign.Documents.Count > 0 Then
   	myFilePath = myInDesign.FilePath
   	myFilePath = myFilePath & "\Scripts\Xml rules\glue code.vbs"
   	Rem Use the Include function to load the glue code file.
   	Include myFilePath
   	Set myDocument = myInDesign.Documents.Item(1)
   	Rem Delete the current text frame.
   	myDocument.Pages.Item(1).TextFrames.Item(1).Delete
   	Rem Document setup
   	With myDocument.ViewPreferences
   		.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
   		.VerticalMeasurementUnits = idMeasurementUnits.idPoints
   		.RulerOrigin = idRulerOrigin.idPageOrigin
   	End With
   	With myDocument.DocumentPreferences
   		.PageWidth = 360
   		.PageHeight = 360
   	End With
   	Rem Create a color.
   	Set myColor = myAddColor(myDocument, "Red", idColorModel.idProcess, Array(0, 100, 100, 0))
   	Set myPaperSwatch = myDocument.Swatches.Item("Paper")
   	Rem Create a series of paragraph styles.
   	Set myParagraphStyle = myMakeParagraphStyle(myDocument, "DeviceName")
   	myParagraphStyle.PointSize =24
   	myParagraphStyle.Leading = 24
   	myParagraphStyle.FillColor = myColor
   	myParagraphStyle.SpaceBefore = 24
   	myParagraphStyle.SpaceAfter = 24
   	myParagraphStyle.RuleBelow = True
   	myParagraphStyle.RuleBelowOffset = 12
   	myParagraphStyle.StartParagraph = idStartParagraph.idNextColumn
   	Set myParagraphStyle = myMakeParagraphStyle(myDocument, "DeviceType")
   	myParagraphStyle.FillColor = myPaperSwatch
   	myParagraphStyle.PointSize =12
   	myParagraphStyle.Leading = 12
   	myParagraphStyle.SpaceAfter = 12	
   	myParagraphStyle.FontStyle = "Bold"
   	Set myParagraphStyle = myMakeParagraphStyle(myDocument, "PartNumber")
   	myParagraphStyle.PointSize =12
   	myParagraphStyle.Leading = 12
   	myParagraphStyle.FontStyle = "Bold"
   	Set myParagraphStyle = myMakeParagraphStyle(myDocument, "Voltage")
   	myParagraphStyle.PointSize =10
   	myParagraphStyle.Leading = 12
   	myParagraphStyle.FontStyle = "Bold"
   	Set myParagraphStyle = myMakeParagraphStyle(myDocument, "DevicePackage")
   	myParagraphStyle.PointSize =10
   	myParagraphStyle.Leading = 12
   	Set myParagraphStyle = myMakeParagraphStyle(myDocument, "Price")
   	myParagraphStyle.PointSize =10
   	myParagraphStyle.Leading = 12
   	myParagraphStyle.FontStyle = "Bold"
   	myParagraphStyle.SpaceAfter = 12
   	myRuleSet = Array(new ProcessDevice, new ProcessName, new ProcessType, new ProcessPartNumber, new ProcessSupplyVoltage, new ProcessPrice, new ProcessPackageType, new ProcessPackageOne, new ProcessPackages)
   	glueCode_ProcessRuleSet myInDesign, myDocument.XMLElements.Item(1), myRuleSet, Array()
   End If
   Rem </fragment>
End Function

Function myTeardown()
End Function

Function myFindFile(myInDesign, myRelativePath, myFilter)
	myFilePath = myInDesign.ActiveScript
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	myFolderPath = myFileSystemObject.GetFile(myFilePath).ParentFolder.Path
	myFilePath = myFolderPath & myRelativePath
	If myFileSystemObject.FileExists(myFilePath) = True Then
		myFile = myFilePath
	Else
		MsgBox "Can't find the XMLRuleExampleSetup.vbs file"
	End If
	myFindFile = myFile
End Function
Rem <fragment>
Class ProcessDevice
	Public Property Get name
		name = "ProcessDevice"
	End Property
	Public Property Get xpath
		xpath = "/devices/device"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		Set myInDesign = CreateObject("InDesign.Application")
	    Set myDocument = myInDesign.Documents.Item(1)
		With myXMLElement
			.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
			If myDocument.Pages.Item(1).TextFrames.Count > 0 Then
				Set myPage = myDocument.Pages.Add
				myBounds = myGetBounds(myDocument, myPage)
				Set myTextFrame = .PlaceIntoFrame(myPage, myBounds)
				myTextFrame.TextFramePreferences.FirstBaselineOffset = idFirstBaseline.idLeadingOffset
			Else
				Set myPage = myDocument.Pages.Item(1)
				myBounds = myGetBounds(myDocument, myPage)
				Set myTextFrame = .PlaceIntoFrame(myPage, myBounds)
				myTextFrame.TextFramePreferences.FirstBaselineOffset = idFirstBaseline.idLeadingOffset
			End If
		End With
		apply = false
	End Function 
End Class

Class ProcessName
	Public Property Get name
		name = "ProcessName"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/name"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
	    Set myInDesign = CreateObject("InDesign.Application")
	    Set myDocument = myInDesign.Documents.Item(1)
		With myXMLElement
			.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
			.ApplyParagraphStyle myDocument.ParagraphStyles.Item("DeviceName")
		End With
		apply = true
	End Function 
End Class

Class ProcessType
	Public Property Get name
		name = "ProcessType"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/type"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
	    Set myInDesign = CreateObject("InDesign.Application")
	    Set myDocument = myInDesign.Documents.Item(1)
		With myXMLElement
			Set myPage = myDocument.Pages.Item(-1)
			myBounds = myGetBounds(myDocument, myPage)
			myX1 = myBounds(1)
			myY1 = myBounds(0)
			myBounds = Array(myY1-24, myX1, myY1, myX1 + 48)
			Set myTextFrame = .PlaceIntoFrame(myPage, myBounds)
			myTextFrame.TextFramePreferences.InsetSpacing = Array(6, 6, 6, 6)
			myTextFrame.FillColor = myDocument.Swatches.Item("Red")
			.ApplyParagraphStyle myDocument.ParagraphStyles.Item("DeviceType")
		End With
		apply = true
	End Function 
End Class

Class ProcessPartNumber
	Public Property Get name
		name = "ProcessPartNumber"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/part_number"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		Set myInDesign = CreateObject("InDesign.Application")
	    Set myDocument = myInDesign.Documents.Item(1)
		With myXMLElement
			.InsertTextAsContent "Part Number: ", idXMLElementPosition.idBeforeElement
			.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
			.ApplyParagraphStyle myDocument.ParagraphStyles.Item("PartNumber")
		End With
		apply = true
	End Function 
End Class

Class ProcessSupplyVoltage
	Public Property Get name
		name = "ProcessPartNumber"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/supply_voltage"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		Set myInDesign = CreateObject("InDesign.Application")
	    Set myDocument = myInDesign.Documents.Item(1)
		With myXMLElement
			.InsertTextAsContent "Supply Voltage From: ", idXMLElementPosition.idBeforeElement
			With .XMLElements.Item(1)
				.InsertTextAsContent " to ", idXMLElementPosition.idAfterElement
			End With
			With .XMLElements.Item(-1)
				.InsertTextAsContent " volts", idXMLElementPosition.idAfterElement
			End With
			.InsertTextAsContent vbCr, idXMLElementPosition.idAfterElement
			.ApplyParagraphStyle myDocument.ParagraphStyles.Item("Voltage")
		End With
		apply = true
	End Function 
End Class

Class ProcessPackageType
	Public Property Get name
		name = "ProcessPackageType"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/package/type"
	End Property
	Public Function  apply (myXMLElement, myRulesProcessor)
		With myXMLElement
			.InsertTextAsContent "-", idXMLElementPosition.idAfterElement
		End With
		apply = true
	End Function 
End Class
Rem Process the first "package" element.
Class ProcessPackageOne
	Public Property Get name
		name = "ProcessPackageOne"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/package[1]"
	End Property
	Public Function  apply (myXMLElement, myRulesProcessor)
		Set myInDesign = CreateObject("InDesign.Application")
	    Set myDocument = myInDesign.Documents.Item(1)
		With myXMLElement
			.InsertTextAsContent "Package: ", idXMLElementPosition.idBeforeElement
			Rem Because we have already added a return to the
			Rem end of this element as part of the ProcessPrice
			Rem rule, we can savly apply a paragrpah style.
			.ApplyParagraphStyle myDocument.ParagraphStyles.Item("DevicePackage")
		End With
		apply = true
	End Function 
End Class
Rem Process the remaining "package" elements.
Class ProcessPackages
	Public Property Get name
		name = "ProcessPackages"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/package"
	End Property
	Public Function  apply (myXMLElement, myRulesProcessor)
		With myXMLElement
			.InsertTextAsContent", ", idXMLElementPosition.idBeforeElement
		End With
		apply = True
	End Function 
End Class
Class ProcessPrice
	Public Property Get name
		name = "ProcessPrice"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/price"
	End Property
	Public Function  apply (myXMLElement, myRulesProcessor)
		Set myInDesign = CreateObject("InDesign.Application")
	    Set myDocument = myInDesign.Documents.Item(1)
		With myXMLElement
			Rem Add a return at the start of the XML element.
			.InsertTextAsContent vbCr & "Price: $", idXMLElementPosition.idBeforeElement
			.InsertTextAsContent vbcr, idXMLElementPosition.idAfterElement
			.ApplyParagraphStyle myDocument.ParagraphStyles.Item("Price")			
		End With
		apply = False
	End Function 
End Class

Function Include(myScriptFilePath)
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	Set myScriptFile = myFileSystemObject.OpenTextFile(myScriptFilePath)
	myScriptContents = myScriptFile.ReadAll
	ExecuteGlobal myScriptContents
End Function
Function myMakeParagraphStyle(myDocument, myStyleName)
    On Error Resume Next
	Set myParagraphStyle = myDocument.ParagraphStyles.Item(myStyleName)
    If Err.Number <> 0 Then
        Set myParagraphStyle = myDocument.ParagraphStyles.Add
	    myParagraphStyle.Name = myStyleName
	    Err.Clear
    End If
    Set myMakeParagraphStyle = myParagraphStyle
End Function
Function myAddColor(myDocument, myColorName, myColorModel, myColorValue)
    On Error Resume Next
    Set myColor = myDocument.colors.Item(myColorName)
    If Err.Number <> 0 Then
        Set myColor = myDocument.colors.Add
	    myColor.Name = myColorName
	    Err.Clear
    End If
    On Error GoTo 0
    myColor.model = myColorModel
    myColor.colorValue = myColorValue
    Set myAddColor = myColor
End Function
Rem </fragment>

Function myGetBounds(myDocument, myPage)
	myPageWidth = myDocument.DocumentPreferences.PageWidth
	myPageHeight = myDocument.DocumentPreferences.PageHeight
	If myPage.Side = idPageSideOptions.idLeftHand Then
		myX2 = myPage.MarginPreferences.Left
		myX1 = myPage.MarginPreferences.Right
	Else
		myX1 = myPage.MarginPreferences.Left
		myX2 = myPage.MarginPreferences.Right
	End If
	myY1 = myPage.marginPreferences.Top
	myX2 = myPageWidth - myX2
	myY2 = myPageHeight - myPage.MarginPreferences.Bottom
	myGetBounds =  Array(myY1, myX1, myY2, myX2)
End Function
