Rem FindXMLElementByFindGrep.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to find an XML element by its content using FindGrep.

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
   	myRuleSet = Array(new FindByFindGrep)
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
Class FindByFindGrep
	Public Property Get name
		name = "FindByFindGrep"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/description"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
	    Set myInDesign = CreateObject("InDesign.Application")
		With myXMLElement		
			myResetFindGrep myInDesign
			If .Texts.Item(1).contents <> "" Then
				Rem Search for the regular expression:
				Rem "(?i)pulse.*?triangle|triangle.*?pulse" 
				Rem in the content of the element.
				myInDesign.FindGrepPreferences.FindWhat = "(?i)pulse.*?triangle|triangle.*?pulse"
				Set myFoundItems = .FindGrep
				Set myColorA = myInDesign.Documents.Item(1).Colors.Item("ColorA")
				If myFoundItems.Count > 0 Then
					.Texts.Item(1).FillColor = myColorA
				End If
				myResetFindGrep myInDesign
			End If
		End With
		apply = false
	End Function 
End Class
Function myResetFindGrep(myInDesign)
	myInDesign.FindTextPreferences = idNothingEnum.idNothing
	myInDesign.ChangeTextPreferences = idNothingEnum.idNothing
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
