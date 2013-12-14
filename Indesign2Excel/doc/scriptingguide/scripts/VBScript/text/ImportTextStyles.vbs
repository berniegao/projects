Rem ImportTextStyles.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to import paragraph styles and character styles from another document.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
   Set myDocument = myInDesign.Documents.Add
   Rem Add a series of styles.
   Set myParagraphStyleA = myAddStyle(myDocument, "ParagraphStyleA", 2)
   Set myParagraphStyleB = myAddStyle(myDocument, "ParagraphStyleB", 2)
   Set myCharacterStyle = myAddStyle(myDocument, "CharacterStyle", 1)
   Rem Save the document (you'll have to fill in a valid file path for your system).
   Set myDocument = myDocument.Save("c:\styles.indd")
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myNewDocument = myInDesign.Documents.Add
	Rem Import the styles from the saved document.
	Rem ImportStyles parameters:
	Rem Format as idImportFormat enumeration. Options for text styles are:
	Rem idImportFormat.idParagraphStylesFormat
	Rem idImportFormat.idCharacterStylesFormat
	Rem idImportFormat.idTextStylesFormat
	Rem From as string (file path)
	Rem GlobalStrategy as idGlobalClashResolutionStrategy enumeration. Options are:
	Rem idGlobalClashResolutionStrategy.idDoNotLoadTheStyle
	Rem idGlobalClashResolutionStrategy.idLoadAllWithOverwrite
	Rem idGlobalClashResolutionStrategy.idLoadAllWithRename
	myNewDocument.ImportStyles idImportFormat.idTextStylesFormat, "c:\styles.indd", idGlobalClashResolutionStrategy.idLoadAllWithOverwrite
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myAddStyle(myDocument, myStyleName, myStyleType)
    On Error Resume Next
    Select Case myStyleType
        Case 1:
            Set myStyle = myDocument.CharacterStyles.Item(myStyleName)
            If Err.Number <> 0 Then
                Set myStyle = myDocument.CharacterStyles.Add
                myStyle.Name = myStyleName
	            Err.Clear
            End If
            On Error GoTo 0
        Case 2:
            Set myStyle = myDocument.ParagraphStyles.Item(myStyleName)
            If Err.Number <> 0 Then
                Set myStyle = myDocument.ParagraphStyles.Add
                myStyle.Name = myStyleName
            Err.Clear
            End If
            On Error GoTo 0
        Case 3:
            Set myStyle = myDocument.ObjectStyles.Item(myStyleName)
            If Err.Number <> 0 Then
                Set myStyle = myDocument.ObjectStyles.Add
                myStyle.Name = myStyleName
            Err.Clear
            End If
            On Error GoTo 0
    End Select
    Set myAddStyle = myStyle
End Function