Rem AddAttribute.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to add an attribute to an XML element.

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
   	myRuleSet = Array(new AddAttribute)
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
Class AddAttribute
	Public Property Get name
		name = "AddAttribute"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/part_number"
	End Property
	Rem Adds the content of the XML element to an attribute 
	Rem of the parent of the XML element. This can make finding
	Rem the element by its content much easier and faster.
	Public Function  apply (myXMLElement, myRuleProcessor)
		With myXMLElement
			Set myParent = .Parent
			myString = myXMLElement.Texts.Item(1).Contents
			Set myXMLAttribute = .Parent.XMLAttributes.Add("part_number", myString)
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



