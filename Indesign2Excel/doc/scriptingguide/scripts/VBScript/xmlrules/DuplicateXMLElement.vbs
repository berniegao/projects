Rem DuplicateXMLElement.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to use an XML rule to duplicate an XML element
Rem in the XML structure.

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
   	Set myDocument = myInDesign.Documents.Item(1)
   	myFilePath = myInDesign.FilePath
   	myFilePath = myFilePath & "\Scripts\Xml rules\glue code.vbs"
   	Rem Use the Include function to load the glue code file.
   	Include myFilePath
   	myRuleSet = Array(new DuplicateElement)
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
Class DuplicateElement
	Public Property Get name
		name = "DuplicateElement"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/part_number"
	End Property
	Rem Moves the part_number XML element to the start of 
	Rem the device XML element (the parent).
	Public Function  apply (myXMLElement, myRuleProcessor)
		Rem Because this rule makes changes to the XML structure,
		Rem you must use _skipChildren to avoid invalidating
		Rem the XML element references.
		glueCode_skipChildren(myRuleProcessor)
		With myXMLElement
			.Duplicate
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
Rem </fragment>

