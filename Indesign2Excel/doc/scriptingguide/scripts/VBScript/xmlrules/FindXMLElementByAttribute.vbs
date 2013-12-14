Rem FindXMLElementByAttribute.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to find an XML element by the contents of an XML attribute.
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
   	Rem Define two colors.
   	Set myColorA = myAddColor(myDocument, "ColorA", idColorModel.idProcess, Array(0, 100, 80, 0))
   	myFilePath = myInDesign.FilePath
   	myFilePath = myFilePath & "\Scripts\Xml rules\glue code.vbs"
   	Rem Use the Include function to load the glue code file.
   	Include myFilePath
   	myRuleSet = Array(new AddAttribute)
   	glueCode_ProcessRuleSet myInDesign, myDocument.XMLElements.Item(1), myRuleSet, Array()
   	Rem Now that the attributes have been added, find and format
   	Rem the XML element whose attribute content matches a specific string.
   	myRuleSet = Array(new FindAttribute)
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
Class FindAttribute
   Public Property Get name
      name = "FindAttribute"
   End Property
   Public Property Get xpath
      xpath = "/devices/device[@part_number = 'DS001']"
   End Property
   Rem Applies a color to the text of an XML element
   Rem (to show that we found it).
   Public Function  apply (myXMLElement, myRuleProcessor)
   	  Set myInDesign = CreateObject("InDesign.Application")
   	  Set myColorA = myInDesign.Documents.Item(1).Colors.Item("ColorA")
      With myXMLElement
         .Texts.Item(1).FillColor = myColorA
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


