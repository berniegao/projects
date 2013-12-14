Rem ReturningFalse.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Demonstrates the effect of returning false vs. returning true
Rem from the apply function of an XML rule.

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
   myCounter = 0
   Set myInDesign = CreateObject("InDesign.Application")
   If myInDesign.Documents.Count > 0 Then
   	Set myDocument = myInDesign.Documents.Item(1)
   	Rem Define two colors.
   	Set myColorA = myAddColor(myDocument, "ColorA", idColorModel.idProcess, Array(0, 100, 80, 0))
   	Set myColorB = myAddColor(myDocument, "ColorB", idColorModel.idProcess, Array(100, 0, 80, 0))	
   	myFilePath = myInDesign.FilePath
   	myFilePath = myFilePath & "\Scripts\Xml rules\glue code.vbs"
   	Rem Use the Include function to load the glue code file.
   	Include myFilePath
   	myRuleSet = Array(new ReturnFalse, new ReturnTrue)
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
   Rem Adds a color to the text of every element in the structure.
   Class ReturnFalse
   	Public Property Get name
   		name = "ReturnFalse"
   	End Property
   	Public Property Get xpath
   		xpath = "//*"
   	End Property
   	Public Function  apply (myXMLElement, myRuleProcessor)
   	    Set myInDesign = CreateObject("InDesign.Application")
   	    Set myColorA = myInDesign.Documents.Item(1).Colors.Item("ColorA")
   		With myXMLElement
   			.Texts.Item(1).FillColor = myColorA
   		End With
   		Rem Leaves the XML element available to further processing.
   		apply = false
   	End Function 
   End Class
   Rem Adds a color to the text of every other element in the structure.
   Class ReturnTrue
   	Public Property Get name
   		name = "ReturnTrue"
   	End Property
   	Public Property Get xpath
   		xpath = "//*"
   	End Property
   	Public Function  apply (myXMLElement, myRuleProcessor)
   		With myXMLElement
   			Rem Test based on the global variable "myCounter"
   			If myCounter Mod 2 = 0 Then
   			    Set myInDesign = CreateObject("InDesign.Application")
   			    Set myColorB = myInDesign.Documents.Item(1).Colors.Item("ColorB")
   				.Texts.Item(1).FillColor = myColorB
   			End If
   			myCounter = myCounter + 1
   		End With
   		Rem Do not process the element with any further matching rules.
   		apply = true
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


