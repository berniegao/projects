Rem ExportEachPageAsEPS.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Exports each page of an InDesign document as a separate EPS to
Rem a selected folder using the current EPS export settings.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	With myDocument.DocumentPreferences
		.PagesPerDocument = 6
		.FacingPages = False
		myPageWidth = .PageWidth
		myPageHeight = .PageHeight
	End With
    Rem If the master spread contains more than a single
    Rem page, delete the additional pages.
    Set myMasterSpread = myDocument.MasterSpreads.Item(1)
    For myCounter = 1 To myMasterSpread.Pages.Count -1
    	myMasterSpread.Pages.Item(1).Delete
    Next
	Set myTextFrame = myMasterSpread.Pages.Item(1).TextFrames.Add
	myTextFrame.GeometricBounds = Array(0, 0, myPageHeight, myPageWidth)
	myTextFrame.Contents = idSpecialCharacters.idAutoPageNumber
    myTextFrame.TextFramePreferences.verticalJustification = idVerticalJustification.idCenterAlign
    myTextFrame.Texts.item(1).pointSize = 72
    myTextFrame.Texts.item(1).justification = idJustification.idCenterAlign
    Rem You'll have to fill in your own file path.
    myDocument.save "C:\ExportAsEPS.indd"
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	Rem VBScript doesn't have a native "get folder" statement, so we'll use
	Rem InDesign's JavaScript to display a folder browser.
	myJavaScript = "myFolder = Folder.selectDialog(""Choose a Folder"");"
	myJavaScript = myJavaScript & "myFolderName = myFolder.fsName;"
	myLanguage = idScriptLanguage.idJavascript
	Rem Run the string "myJavaScript" as a JavaScript
	myFolderName = myInDesign.DoScript(myJavaScript, myLanguage)
	If myFileSystemObject.FolderExists(myFolderName) Then
	    myExportEPSPages myInDesign, myDocument, myFolderName
	End If
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem<fragment>
Function myExportEPSPages(myInDesign, myDocument, myFolderName)
	myDocumentName = myDocument.Name
	Set myDialog = myInDesign.Dialogs.Add
	With myDialog
		.Name = "ExportPages"
		With .DialogColumns.Add
			With .DialogRows.Add
				With .StaticTexts.Add
	    			.StaticLabel = "Base Name:"
				End With
				Set myBaseNameField = .TextEditboxes.Add
				myBaseNameField.EditContents = myDocumentName
				myBaseNameField.MinWidth = 160
			End With
		End With
	End With
	myResult = myDialog.Show
	If myResult = True Then
		myBaseName = myBaseNameField.EditContents
		Rem Remove the dialog box from memory.
		myDialog.Destroy
		For myCounter = 1 To myDocument.Pages.Count
			myPageName = myDocument.Pages.Item(myCounter).Name
			myInDesign.EPSExportPreferences.PageRange = myPageName
			Rem Generate a file path from the folder name, the base document name,
			Rem and the page name. Replace the colons in the page name (e.g.,
			Rem "Sec1:1") with underscores.
			myPageName = Replace(myPageName, ":", "_")
			myFilePath = myFolderName & "\" & myBaseName & "_" _
			& myPageName & ".eps"
			myDocument.Export idExportFormat.idEPSType, myFilePath, False
		Next
	Else
		myDialog.Destroy
	End If
End Function
Rem </fragment>

