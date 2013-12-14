Rem XMLRulesExampleSetup.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Sets up the example XML structure used for most of the XML rule scripts
Rem shown in the Adobe InDesign CS6 Scripting Guide.

main

Function main()
    Set myInDesign = CreateObject("InDesign.Application")
    Set myDocument = myInDesign.Documents.Add 
    myDocument.XmlImportPreferences.AllowTransform = false
    myDocument.XmlImportPreferences.IgnoreWhitespace = true
    myFilePath = myGetScriptPath(myInDesign, "\XMLRulesExampleData.xml")
    myDocument.importXML myFilePath
    myBounds = myGetBounds(myDocument, myDocument.pages.item(1))
	myDocument.xmlElements.item(1).placeIntoFrame myDocument.pages.item(1), myBounds
End Function

Function myGetScriptPath(myInDesign, myRelativePath)
	myFilePath = myInDesign.ActiveScript
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	myFolderPath = myFileSystemObject.GetFile(myFilePath).ParentFolder.Path
	myFilePath = myFolderPath & myRelativePath
	If myFileSystemObject.FileExists(myFilePath) = True Then
		myFile = myFilePath
	Else
		MsgBox "Can get the xml source file!"
	End If
	myGetScriptPath = myFile
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
