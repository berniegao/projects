Rem ProcessChildren.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows the difference(s) between an XML rule without
Rem __processChildren and an XML rule that uses __ProcessChildren..

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
   Set myPage = myInDesign.ActiveWindow.ActivePage
   Set myRootXMLElement = myDocument.XMLElements.Item(1)
   Set myTextFrame = myPage.TextFrames.Add
   myTextFrame.GeometricBounds = myGetBounds(myDocument, myPage)
   Set myStory = myTextFrame.ParentStory
   myFilePath = myInDesign.FilePath
   myFilePath = myFilePath & "\Scripts\Xml rules\glue code.vbs"
   Rem Use the Include function to load the glue code file.
   Include myFilePath
   myRuleSet = Array(new NormalRule, new ProcessChildrenRule)
   Rem The third parameter of __processRuleSet is a
   Rem prefix mapping table; we'll leave it empty.
   MsgBox "Root XML contents " & myRootXMLelement.contents
   glueCode_ProcessRuleSet myInDesign, myRootXMLElement, myRuleSet, Array() 
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
Rem XML rules follow.
Class NormalRule
	Public Property Get name
		name = "NormalRule"
	End Property
	Public Property Get xpath
		xpath = "//XMLElement"
	End Property
	Public Function apply(myXMLElement, myRuleProcessor)
		With myXMLElement
			myStory.InsertionPoints.Item(-1).Contents = .XMLAttributes.Item(1).Value & vbCr
		End With
		apply = false
	End Function 
End Class
Class ProcessChildrenRule
	Public Property Get name
		name = "ProcessChildrenRule"
	End Property
	Public Property Get xpath
		xpath = "//XMLElement"
	End Property
	Public Function apply(myXMLElement, myRuleProcessor)
		glueCode_processChildren(myRuleProcessor)
		With myXMLElement
			myXMLElement.XMLattributes.Item(1).Value
			myStory.InsertionPoints.Item(-1).Contents = .XMLAttributes.Item(1).Value & vbCr
		End With
		apply = false
	End Function 
End Class
Rem </fragment>

Rem Utility functions follow.
Function myGetBounds(myDocument, myPage)
	myPageWidth = myDocument.DocumentPreferences.PageWidth
	myPageHeight = myDocument.DocumentPreferences.PageHeight
	myX1 = myPage.MarginPreferences.Left
	myY1 = myPage.MarginPreferences.Top
	myX2 = myPageWidth - myPage.MarginPreferences.Right
	myY2 = myPageHeight - myPage.MarginPreferences.Bottom
	myGetBounds = Array(myY1, myX1, myY2, myX2)
End Function
Function Include(myScriptFilePath)
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	Set myScriptFile = myFileSystemObject.OpenTextFile(myScriptFilePath)
	myScriptContents = myScriptFile.ReadAll
	ExecuteGlobal myScriptContents
End Function

