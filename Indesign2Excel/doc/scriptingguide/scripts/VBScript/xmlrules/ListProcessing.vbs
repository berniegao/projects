Rem ListProcessing.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to process a list of like XML elements in a
Rem given XML container element using forward-axis matching.

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
   myRuleSet = Array(new ListItems)
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
Class ListItems
	Public Property Get name
		name = "ListItems"
	End Property
	Public Property Get xpath
		xpath = "/xmlElement/item[1]/following-sibling::*"
	End Property
	Public Function  apply (myXMLElement, myRulesProcessor)
		With myXMLElement
			.InsertTextAsContent ", ", idXMLElementPosition.idBeforeElement
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
