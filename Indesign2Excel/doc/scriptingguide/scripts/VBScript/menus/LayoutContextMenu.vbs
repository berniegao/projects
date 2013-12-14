Rem LayoutContextMenu.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to add an interactive menu element to the layout context menu
Rem (the context menu that appears when you have an object selected).
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Rem Create an example document.
	Set myDocument = myInDesign.Documents.Add
	myDocument.ViewPreferences.HorizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.VerticalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.ViewPreferences.RulerOrigin = idRulerOrigin.idPageOrigin
	myDocument.DocumentPreferences.PageWidth = 222 + 72
	myDocument.DocumentPreferences.PageHeight = 214.658 + 72
	With myDocument.MetadataPreferences
		.Author = "Adobe Systems"
		.Description = "This is a sample PDF with XMP metadata."
	End With
	Set myPage = myDocument.Pages.Item(1)
	myInDesign.PolygonPreferences.NumberOfSides = 5
	myInDesign.PolygonPreferences.InsetPercentage = 50
	Set myPolygon = myPage.Polygons.Add
	myPolygon.GeometricBounds = Array(72, 72, 214.658, 222)
	myPolygon.Export idExportFormat.idPDFType, "c:\test.pdf"
	myDocument.Close idSaveOptions.idNo
	Set myDocument = myInDesign.Documents.Add
	myDocument.Pages.Item(1).Place "c:\test.pdf"
End Function
Function mySnippet(myInDesign)
	Rem<fragment>
	Rem The local-independent name (aka "key string") for the 
	Rem Layout context menu is "$ID/RtMouseLayout".
	Set myLayoutContextMenu = myInDesign.Menus.Item("$ID/RtMouseLayout")
	Rem Create the event handler for the "beforeDisplay" event of the Layout context menu.
	Rem Define the handler as a file named "Message.vbs" stored
	Rem in the same folder as this script.
	myFileName = myFindFile(myInDesign, "\LabelContextMenuBeforeDisplayHandler.vbs")
	If myFileName <> "" Then
		Set myBeforeDisplayListener = myLayoutContextMenu.addEventListener("beforeDisplay", myFileName, false)
	End If
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function
Function myFindFile(myInDesign, myRelativePath)
	myFilePath = myInDesign.ActiveScript
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	myFolderPath = myFileSystemObject.GetFile(myFilePath).ParentFolder.Path
	myFilePath = myFolderPath & myRelativePath
	If myFileSystemObject.FileExists(myFilePath) = True Then
		myFile = myFilePath
	Else
		myFile = myGetFileName(myFolderPath)
	End If
	myFindFile = myFile
End Function
Function myGetFileName(myFolder)
	Set myDialog = CreateObject("UserAccounts.CommonDialog")
	myDialog.Filter = "VBScript files|*.vbs"
	myDialog.InitialDir = myFolder
	myResult = myDialog.ShowOpen	 
	If myResult = 0 Then
	    myFileName = ""
	Else
		myFileName = myDialog.FileName
	End If
	myGetFileName = myFileName
End Function