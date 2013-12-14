Rem AddReturnsAndStaticText.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Defines a simple set of XML rules.

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
   Set myDocument = myInDesign.ActiveDocument
   myFilePath = myInDesign.FilePath
   myFilePath = myFilePath & "\Scripts\Xml rules\glue code.vbs"
   Rem Use the Include function to load the glue code file.
   Include myFilePath
   myRuleSet = Array(new ProcessDevice,new ProcessName,new ProcessType,_
   new ProcessPartNumber,new ProcessSupplyVoltage,new ProcessPackageType,_
   new ProcessPackageOne,new ProcessPackages,new ProcessPrice)
   Rem The fourth parameter of __processRuleSet is a
   Rem prefix mapping table; we'll leave it empty.
   glueCode_ProcessRuleSet myInDesign, myDocument.XMLElements.Item(1), myRuleSet, Array() 
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
	Public Function  apply (myXMLElement, myRulesProcessor)
		With myXMLElement
			.InsertTextAsContent vbcr, idXMLElementPosition.idAfterElement
		End With
		apply = False
	End Function 
End Class
Class ProcessName
	Public Property Get name
		name = "ProcessName"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/name"
	End Property
	Public Function  apply (myXMLElement, myRulesProcessor)
		With myXMLElement
			Rem Add static text at the beginning of the element.
			.InsertTextAsContent "Device Name:", idXMLElementPosition.idBeforeElement
			Rem Add a return character at the end of the element.
			.InsertTextAsContent vbcr, idXMLElementPosition.idAfterElement
		End With
		apply = False
	End Function 
End Class
Class ProcessType
	Public Property Get name
		name = "ProcessType"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/type"
	End Property
	Public Function  apply (myXMLElement, myRulesProcessor)
		With myXMLElement
			Rem Add static text at the beginning of the element.
			.InsertTextAsContent "Circuit Type:", idXMLElementPosition.idBeforeElement
			Rem Add a return character at the end of the element.
			.InsertTextAsContent vbcr, idXMLElementPosition.idAfterElement
		End With
		apply = False
	End Function 
End Class
Class ProcessPartNumber
	Public Property Get name
		name = "ProcessPartNumber"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/part_number"
	End Property
	Public Function  apply (myXMLElement, myRulesProcessor)
		With myXMLElement
			Rem Add static text at the beginning of the element.
			.InsertTextAsContent "Part Number:", idXMLElementPosition.idBeforeElement
			Rem Add a return character at the end of the element.
			.InsertTextAsContent vbcr, idXMLElementPosition.idAfterElement
		End With
		apply = False
	End Function 
End Class
Rem Adds static text around the "minimum" and "maximum"
Rem XML elements of the "supply_voltage" XML element.

Class ProcessSupplyVoltage
	Public Property Get name
		name = "ProcessSupplyVoltage"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/supply_voltage"
	End Property
	Public Function  apply (myXMLElement, myRulesProcessor)
		With myXMLElement
			.InsertTextAsContent "Supply Voltage: From ", idXMLElementPosition.idBeforeElement			
			With myXMLElement.XMLElements.Item(1)
				.InsertTextAsContent " to ", idXMLElementPosition.idAfterElement
			End with
			With myXMLElement.XMLElements.Item(-1)
				Rem Add static text to the end of the voltage range.
				.InsertTextAsContent " volts", idXMLElementPosition.idAfterElement
			End with
			Rem Add a return at the end of the XML element.
			.InsertTextAsContent vbcr, idXMLElementPosition.idAfterElement
		End With
		apply = True
	End Function 
End Class
Rem Insert a dash between the "type" and "pins" elements.
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
		With myXMLElement
			.InsertTextAsContent "Package: ", idXMLElementPosition.idBeforeElement
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
		With myXMLElement
			Rem Add a return at the start of the XML element.
			.InsertTextAsContent vbCr & "Price: $", idXMLElementPosition.idBeforeElement
			Rem .InsertTextAsContent "Price: $", idXMLElementPosition.idBeforeElement
			.InsertTextAsContent vbcr, idXMLElementPosition.idAfterElement
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
Rem </fragment>

