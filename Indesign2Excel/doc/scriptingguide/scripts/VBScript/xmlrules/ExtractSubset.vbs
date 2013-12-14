Rem ExtractSubset.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to extract a subset of XML elements from an XML structure.
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
	Set myDocument = myInDesign.Documents.Item(1)
	myFilePath = myInDesign.FilePath
	myFilePath = myFilePath & "\Scripts\Xml rules\glue code.vbs"
	Rem Use the Include function to load the glue code file.
	Include myFilePath
	Set myXMLTag = myMakeXMLTag(myDocument, "VCOs")
	Set myContainerElement = myDocument.XMLElements.Item(1).XMLElements.Add(myXMLTag)
	myRuleSet = Array(new ExtractVCO)
	glueCode_ProcessRuleSet myInDesign, myDocument.XMLElements.Item(1), myRuleSet, Array()
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem <fragment>
Class ExtractVCO
	Public Property Get name
		name = "ExtractVCO"
	End Property
	Public Property Get xpath
		xpath = "/devices/device/type"
	End Property
	Public Function  apply (myXMLElement, myRuleProcessor)
		With myXMLElement
			If .Texts.Item(1).Contents = "VCO" Then
				Set myDestination = myXMLElement.Parent.Parent.XMLElements.Item(-1)
				Set myNewElement = .Parent.Duplicate
				myNewElement.Move idLocationOptions.idAtEnd, myDestination
			End If
		End With
		apply = false
	End Function 
End Class
Rem </fragment>
Function Include(myScriptFilePath)
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	Set myScriptFile = myFileSystemObject.OpenTextFile(myScriptFilePath)
	myScriptContents = myScriptFile.ReadAll
	ExecuteGlobal myScriptContents
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
Function myGetFileName(myFolder)
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