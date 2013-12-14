Rem ConvertINXToIDML.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Converts INX files to IDML by opening and re-epxorting the documents.
myExtensions = Array(".inx")
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	ReDim myFileList(0)
	myConvertRange = myConvertDialog(myInDesign)
	Select Case myConvertRange
		case 0:
			Rem User selected single file.
			Rem Creating a file open dialog in VBScript can be a problem, and depends on whether the OS is
			Rem Windows XP or Windows Vista. We'll use an InDesign JavaScript to display a file open dialog
			Rem box. The DoScript method can return a value; in this example, it's the name of the file.
			myJavaScript = "myFileName = File.openDialog(""Select an INX file to convert"", ""INX files: *.inx"");if(myFileName != null){myFileName = File(myFileName).fsName;}else{myFileName = """";}myFileName;"
			myFileName = myInDesign.doScript(myJavaScript, idScriptLanguage.idJavascript)
			If myFileName <> "" Then
				myFileList(0) = myFileName
			End If
		case 1:
			Rem User selected folder.
			Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
			Rem Again, we'll use an InDesign JavaScript to display a folder browser and return
			Rem the name of the selected folder.
			myJavaScript = "myFolder = Folder.selectDialog(""Choose a Folder"");if(myFolder != null){myFolderName = myFolder.fsName;}else{myFolderName = """";}myFolderName;"
			MsgBox myJavaScript
			Rem The following line shows how to return a value from a script called with the DoScript method.
			myFolderName = myInDesign.doScript(myJavaScript, idScriptLanguage.idJavascript)
			If myFileSystemObject.FolderExists(myFolderName) Then
				Set myFolder = myFileSystemObject.GetFolder(myFolderName)
				For Each File In myFolder.Files
					myFilePath = File.Path
					If myCheckFileType(myFilePath, myExtensions) = True Then
						Rem Add the file to the list of files to be placed.
						If Not (IsEmpty(myFileList(0))) Then
							ReDim Preserve myFileList(UBound(myFileList) + 1)
						End If
						myFileList(UBound(myFileList)) = myFilePath
					End If
				Next
			End If
	End Select
	If Not (IsEmpty(myFileList(0))) Then
		For myCounter = 0 To UBound(myFileList)
			Set myDocument = myInDesign.open(myFileList(myCounter))
			myIDMLFileName = Replace(myFileList(myCounter), ".inx", ".idml")
			myDocument.Export idExportFormat.idIndesignMarkup, myIDMLFileName
			myDocument.Close idSaveOptions.idNo
		Next
	Else
		MsgBox "No files found to place."
	End If
End Function
Function myTeardown(myInDesign)
End Function
Function myCheckFileType(myFilePath, myExtensions)
	myFilePath = LCase(myFilePath)
    For Each myExtension In myExtensions
        If InStr(myFilePath, myExtension) <> 0 Then
            myCheckFileType = True
            Exit Function
        End If
    Next
    myCheckFileType = False
End Function
Function myConvertDialog(myInDesign)
	Set myDialog = myInDesign.Dialogs.Add
	myDialog.Name = "Convert INX to IDML"
	with myDialog.DialogColumns.Add
		With .StaticTexts.Add
			.StaticLabel = "Convert a single file or a folder?"
		End With
		Set myConvertRadioButtons = .RadiobuttonGroups.Add
		With myConvertRadioButtons.RadiobuttonControls.Add
			.StaticLabel = "Select file"
			.CheckedState = True
		End With
		With myConvertRadioButtons.RadiobuttonControls.Add
			.StaticLabel = "Select folder"
			.CheckedState = True
		End With
	End With
	myResult = myDialog.Show
	if myResult = True Then
		myConvertRange = myConvertRadioButtons.SelectedButton
		myDialog.Destroy
	Else
		myConvertRange = 3
		myDialog.Destroy
	End If
	myConvertDialog = myConvertRange
End Function