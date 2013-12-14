Rem XMLRulesTable.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to create a table from XML elements using XML rules.
Dim myContainerElement
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.xmlImportPreferences.allowTransform = False
	myDocument.xmlImportPreferences.ignoreWhitespace = True
	myFilePath = myFindFile(myInDesign, "\XMLRulesExampleData.xml", "XML files|*.xml")
	myDocument.importXML myFilePath
	myBounds = myGetBounds(myDocument, myDocument.pages.item(1))
	myDocument.xmlElements.item(1).placeIntoFrame myDocument.pages.item(1), myBounds
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	If myInDesign.Documents.Count > 0 Then
	myFilePath = myInDesign.FilePath
	myFilePath = myFilePath & "\Scripts\Xml rules\glue code.vbs"
	Rem Use the Include function to load the glue code file.
	Include myFilePath
	Set myDocument = myInDesign.Documents.Item(1)
	Rem Delete the current text frame.
	myDocument.Pages.Item(1).TextFrames.Item(1).Delete
	Rem Apply an XML rule set that adds attributes 
	Rem based on the type of each "device" XML element.	
	myRuleSet = Array(new AddTypeAttribute)
	glueCode_ProcessRuleSet myInDesign, myDocument.XMLElements.Item(1), myRuleSet, Array()
	Rem Next, create some XML tags.
	Set myVCOTag = myMakeXMLTag(myDocument, "VCOs")
	Set myRowTag = myMakeXMLTag(myDocument, "Row")
	Set myCellTag = myMakeXMLTag(myDocument, "Column")
	Rem Create a container XML element to hold the device
	Rem elements we'll extract from the XML structure.
	Rem This element is the XML element we'll convert
	Rem to a table.
	Set myVCOElement = myDocument.XMLElements.Item(1).XMLElements.Add(myVCOTag)
	Set myContainerElement = myVCOElement.XMLElements.Add(myVCOTag)
	Rem This creates a "VCO" element inside a "VCO" element. We do this because
	Rem the second (child) element will be consumed when we convert it to a
	Rem table.
	With myContainerElement
		Set myRowElement = .XMLElements.Add(myRowTag)
		With myRowElement
			Set myCellElement = .XMLElements.Add(myCellTag)
			myCellElement.Contents = "Name"
			Set myCellElement = .XMLElements.Add(myCellTag)
			myCellElement.Contents = "Part Number"
			Set myCellElement = .XMLElements.Add(myCellTag)
			myCellElement.Contents = "Power"
			Set myCellElement = .XMLElements.Add(myCellTag)
			myCellElement.Contents = "Package"
			Set myCellElement = .XMLElements.Add(myCellTag)
			myCellElement.Contents = "Price"
			Set myCellElement = .XMLElements.Add(myCellTag)
			myCellElement.Contents = "Description"
		End With
	End With
	myRuleSet = Array(new ProcessDevice, new ProcessName, new ProcessType, new ProcessPartNumber, _
	new ProcessPackageOne, new ProcessPackage, new ProcessMaximumVoltage, new ProcessSupplyVoltage, _
	new ProcessPrice, new ProcessDescription)
	glueCode_ProcessRuleSet myInDesign, myDocument.XMLElements.Item(1), myRuleSet, Array()   	
	Rem Now that we've processed the rule set and extracted
	Rem the VCO elements, make a table containing the elements.
	myBounds = myGetBounds(myDocument, myDocument.pages.item(1))
	Set myTable = myContainerElement.ConvertElementToTable(myRowTag, myCellTag)
	myTable.width = myBounds(3)-myBounds(1)
	myVCOElement.placeIntoFrame myDocument.pages.item(1), myBounds
	Set myTitleRow = myTable.rows.add(idLocationOptions.idAtBeginning)
	myTitleRow.cells.item(1).merge(myTitleRow.cells.item(-1))
	myTitleRow.cells.item(1).insertionPoints.item(1).contents = "Voltage Controlled Oscillators"
	myTitleRow.cells.item(1).texts.item(1).justification = idJustification.idCenterAlign
	myTitleRow.rowType = idRowTypes.idHeaderRow
	Set mySubtitleRow = myTable.Rows.NextItem(myTitleRow)
	mySubtitleRow.rowType = idRowTypes.idHeaderRow
	End If
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem <fragment>
Class AddTypeAttribute
	Public Property Get name
		name = "AddTypeAttribute"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/type"
	End Property
	Rem Adds the content of the "type" XML element to an attribute 
	Rem of the parent of the XML element. This can make finding
	Rem the element by its content much easier and faster.
	Public Function  apply (myXMLElement, myRuleProcessor)
		With myXMLElement
			Set myParent = .Parent
			myString = myXMLElement.Texts.Item(1).Contents
			Set myXMLAttribute = .Parent.XMLAttributes.Add("type", myString)
		End With
		apply = false
	End Function 
End Class
Class ProcessDevice
	Public Property Get name
		name = "ProcessDevice"
	End Property
	Public Property Get xpath
		xpath = "//device[@type = 'VCO']"
	End Property
	Rem Create a new row for every device whose type is "VCO"
	Public Function  apply (myXMLElement, myRuleProcessor)
	    Set myInDesign = CreateObject("InDesign.Application")
	    Set myRowTag = myInDesign.Documents.Item(1).XmlTags.Item("Row")
		Set myNewRowElement = myContainerElement.XMLElements.Add(myRowTag)
		apply = false
	End Function 
End Class
Class ProcessName
	Public Property Get name
		name = "ProcessName"
	End Property
	Public Property Get xpath
		xpath = "//device[@type = 'VCO']/name"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		glueCode_skipChildren(myRuleProcessor)
		With myXMLElement
			Set myInDesign = CreateObject("InDesign.Application")
	        Set myCellTag = myInDesign.Documents.Item(1).XmlTags.Item("Column")
			Set myLastElement = myContainerElement.XMLElements.Item(-1)
			Rem Create a cell XML element at the end of the row container element.
			Set myNewElement = myLastElement.XMLElements.add(myCellTag)
			Rem Move the name element into the Cell element we've
			Rem created to hold it.
			.Move idLocationOptions.idAtBeginning, myNewElement
		End With
		apply = true
	End Function 
End Class
Rem The first matching "package" XML element creates the 
Rem table element to hold all other matching XML elements.
Class ProcessPackageOne
	Public Property Get name
		name = "ProcessPackageOne"
	End Property
	Public Property Get xpath
		xpath = "//device[@type = 'VCO']/package[1]"
	End Property
	Public Function apply (myXMLElement, myRuleProcessor)
		glueCode_skipChildren(myRuleProcessor)
		With myXMLElement
		 	Set myInDesign = CreateObject("InDesign.Application")
	        Set myCellTag = myInDesign.Documents.Item(1).XmlTags.Item("Column")
			Set myLastElement = myContainerElement.XMLElements.Item(-1)
			Set myNewElement = myLastElement.XMLElements.add(myCellTag)
			.Move idLocationOptions.idAtBeginning, myNewElement
		End With
		apply = true
	End Function 
End Class
Class ProcessPackage
	Public Property Get name
		name = "ProcessPackage"
	End Property
	Public Property Get xpath
		xpath = "//device[@type = 'VCO']/package"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		glueCode_skipChildren(myRuleProcessor)
		With myXMLElement
			Set myNewElement = myXMLElement.move(idLocationOptions.idAtEnd, myContainerElement.xmlElements.item(-1).xmlElements.item(-1))
			myNewElement.InsertTextAsContent vbCr, idXMLElementPosition.idBeforeElement
		End With
		apply = true
	End Function 
End Class
Class ProcessType
	Public Property Get name
		name = "ProcessType"
	End Property
	Public Property Get xpath
		xpath = "//device[@type = 'VCO']/type"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		glueCode_skipChildren(myRuleProcessor)
		With myXMLElement
			.Delete
		End With
		apply = true
	End Function 
End Class
Class ProcessPartNumber
	Public Property Get name
		name = "ProcessPartNumber"
	End Property
	Public Property Get xpath
		xpath = "//device[@type = 'VCO']/part_number"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		glueCode_skipChildren(myRuleProcessor)
		With myXMLElement
			Set myInDesign = CreateObject("InDesign.Application")
	        Set myCellTag = myInDesign.Documents.Item(1).XmlTags.Item("Column")
			Set myLastElement = myContainerElement.XMLElements.Item(-1)
			Set myNewElement = myLastElement.XMLElements.add(myCellTag)
			.Move idLocationOptions.idAtBeginning, myNewElement
		End With
		apply = false
	End Function 
End Class
Class ProcessMaximumVoltage
	Public Property Get name
		name = "ProcessPartNumber"
	End Property
	Public Property Get xpath
		xpath = "//device[@type = 'VCO']/supply_voltage/maximum"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		With myXMLElement
			.InsertTextAsContent " to ", idXMLElementPosition.idBeforeElement
			.InsertTextAsContent " volts", idXMLElementPosition.idAfterElement
		End With
		apply = true
	End Function 
End Class
Class ProcessSupplyVoltage
	Public Property Get name
		name = "ProcessPartNumber"
	End Property
	Public Property Get xpath
		xpath = "//device[@type = 'VCO']/supply_voltage"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		glueCode_processChildren(myRuleProcessor)
		With myXMLElement
			Set myInDesign = CreateObject("InDesign.Application")
	        Set myCellTag = myInDesign.Documents.Item(1).XmlTags.Item("Column")
			Set myLastElement = myContainerElement.XMLElements.Item(-1)
			Set myNewElement = myLastElement.XMLElements.add(myCellTag)
			'MsgBox("Should be moving a supply voltage now")
			.Move idLocationOptions.idAtBeginning, myNewElement
		End With
		apply = true
	End Function 
End Class
Class ProcessPrice
	Public Property Get name
		name = "ProcessPrice"
	End Property
	Public Property Get xpath
		xpath = "//device[@type = 'VCO']/price"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		glueCode_skipChildren(myRuleProcessor)
		With myXMLElement
			Set myInDesign = CreateObject("InDesign.Application")
	        Set myCellTag = myInDesign.Documents.Item(1).XmlTags.Item("Column")
			Set myLastElement = myContainerElement.XMLElements.Item(-1)
			Set myNewElement = myLastElement.XMLElements.add(myCellTag)
			Set myPriceElement = .Move(idLocationOptions.idAtBeginning, myNewElement)
			myPriceElement.InsertTextAsContent "$", idXMLElementPosition.idBeforeElement
		End With
		apply = true
	End Function
End Class
Class ProcessDescription
	Public Property Get name
		name = "ProcessDescription"
	End Property
	Public Property Get xpath
		xpath = "//device[@type = 'VCO']/description"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		glueCode_skipChildren(myRuleProcessor)
		With myXMLElement
			Set myInDesign = CreateObject("InDesign.Application")
	        Set myCellTag = myInDesign.Documents.Item(1).XmlTags.Item("Column")
			Set myLastElement = myContainerElement.XMLElements.Item(-1)
			Set myNewElement = myLastElement.XMLElements.add(myCellTag)
			'MsgBox("Should be moving a description now")
			.Move idLocationOptions.idAtBeginning, myNewElement
		End With
		apply = false
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
Function myMakeXMLTag(myDocument, myString)
    On Error Resume Next
	Set myXMLTag = myDocument.XMLTags.Item(myString)
    If Err.Number <> 0 Then
        Set myXMLTag = myDocument.XMLTags.Add
	    myXMLTag.Name = myString
	    Err.Clear
    End If
    Set myMakeXMLTag = myXMLTag
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
	myGetBounds = Array(myY1, myX1, myY2, myX2)
End Function
Function myFindFile(myInDesign, myRelativePath, myFilter)
	myFilePath = myInDesign.ActiveScript
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	myFolderPath = myFileSystemObject.GetFile(myFilePath).ParentFolder.Path
	myFilePath = myFolderPath & myRelativePath
	If myFileSystemObject.FileExists(myFilePath) = True Then
		myFile = myFilePath
	Else
		myFile = myGetFileName(myFolderPath, myFilter)
	End If
	myFindFile = myFile
End Function
Function myGetFileName(myFolder, myFilter)
	Set myDialog = CreateObject("UserAccounts.CommonDialog")
	myDialog.Filter = myFilter
	myDialog.InitialDir = myFolder
	myResult = myDialog.ShowOpen	 
	If myResult = 0 Then
	    myFileName = ""
	Else
		myFileName = myDialog.FileName
	End If
	myGetFileName = myFileName
End Function