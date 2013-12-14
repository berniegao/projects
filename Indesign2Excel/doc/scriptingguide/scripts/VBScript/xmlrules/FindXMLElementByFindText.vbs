Rem FindXMLElementByFindText.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to find an XML element by its content using FindText.

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
   	myRuleSet = Array(new FindByFindText)
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
Class FindByFindText
	Public Property Get name
		name = "FindByFindText"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/description"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
	    Set myInDesign = CreateObject("InDesign.Application")
		With myXMLElement		
			myResetFindText myInDesign
			If .Texts.Item(1).contents <> "" Then
				Rem Set the find options.
				myInDesign.FindChangeTextOptions.CaseSensitive = False
				myInDesign.FindChangeTextOptions.IncludeFootnotes = False
				myInDesign.FindChangeTextOptions.IncludeHiddenLayers = False
				myInDesign.FindChangeTextOptions.IncludeLockedLayersForFind = False
				myInDesign.FindChangeTextOptions.IncludeLockedStoriesForFind = False
				myInDesign.FindChangeTextOptions.IncludeMasterPages = False
				myInDesign.FindChangeTextOptions.WholeWord = False
				Rem Search for the word "triangle" in the content of the element.
				myInDesign.FindTextPreferences.FindWhat = "triangle"
				Set myFoundItems = .FindText
				If myFoundItems.Count > 0 Then
   	                Set myColorA = myInDesign.Documents.Item(1).Colors.Item("ColorA")
					.Texts.Item(1).FillColor = myColorA
				End If
				myResetFindText myInDesign
			End If
		End With
		apply = false
	End Function 
End Class
Function myResetFindText(myInDesign)
'	myInDesign.FindTextPreferences = idNothingEnum.idNothing
'	myInDesign.ChangeTextPreferences = idNothingEnum.idNothing
	myInDesign.FindTextPreferences = 1851876449
	myInDesign.ChangeTextPreferences = 1851876449

End Function
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


