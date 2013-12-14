Rem XMLRulesProcessor.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Uses the XML rule processor object to find XML elements
Rem in the XML structure of a document.

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
   myXPath = Array("/devices/device")
   myXMLMatches = mySimulateXPath(myXPath)
   Rem At this point, myXMLMatches contains all of the XML elements
   Rem that matched the XPath expression provided in myXPath.
   Rem In a real script, you could now process the elements.
   Rem For this example, however, we'll simply display a message.
   If IsEmpty(myXMLMatches(0)) = False Then
   	MsgBox "Found " & CStr(UBound(myXMLMatches)+1) & " matching elements."
   Else
   	MsgBox "Did not find any matching XML elements."
   End if
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
Function mySimulateXPath(myXPath)
	ReDim myMatchingElements(0)
	Set myInDesign = CreateObject("InDesign.Application")
	Set myRuleProcessor = myInDesign.XMLRuleProcessors.Add(myXPath)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myRootXMLElement = myDocument.XMLElements.Item(1)
	Set myMatchData = myRuleProcessor.StartProcessingRuleSet(myRootXMLElement)
	Do While TypeName(myMatchData) <> "Nothing"
	    Set myXMLElement = myMatchData.Element
		If IsEmpty(myMatchingElements(0)) = False Then
			ReDim Preserve myMatchingElements(UBound(myMatchingElements) + 1)
		End If
		Set myMatchingElements(UBound(myMatchingElements)) = myXMLElement
	    Set myMatchData = myRuleProcessor.FindNextMatch
	Loop
	mySimulateXPath = myMatchingElements
End Function
Rem </fragment>

