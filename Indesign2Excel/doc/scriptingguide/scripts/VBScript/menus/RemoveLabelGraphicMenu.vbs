Rem RemoveLabelGraphicMenu.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Removes the Label Graphic script menu item (installed by the
Rem LabelGraphicMenu.vbs sample script) from the Layout context menu.
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
	Rem<fragment>
	Set myMenu = myInDesign.Menus.Item("$ID/RtMouseLayout")
	If myCheckForMenuItem(myMenu, "Label Graphic") = true Then
		Set myMenuItem = myMenu.MenuItems.Item("Label Graphic")
		myMenuItem.Delete
	End If
	If myCheckForScriptMenuAction(myInDesign, "Label Graphic") = true Then
		Set myScriptMenuAction = myInDesign.ScriptMenuActions.Item("Label Graphic")
		myScriptMenuAction.Delete
	End If
	myEventHandler = myFindFile(myInDesign, "\LabelGraphicBeforeDisplay.vbs")
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	Set myEventHandler = myFileSystemObject.GetFile(myEventHandler)
	myResult = myMenu.RemoveEventListener("beforeDisplay", myEventHandler, False)
	Rem</fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem<fragment>
Function myCheckForMenuItem(myMenu, myString)
	myResult = False
	On Error Resume Next
	Set myMenuItem = myMenu.MenuItems.Item(myString)
	If Err.Number = 0 Then
		myResult = true
	End If
	Err.Clear
	On Error Goto 0
	myCheckForMenuItem = myResult
End function
Function myCheckForScriptMenuAction(myInDesign, myString)
	myResult = False
	On Error Resume Next
	Set myScriptMenuAction = myInDesign.ScriptMenuActions.Item(myString)
	If Err.Number = 0 Then
		myResult = True
	End If
	Err.Clear
	On Error Goto 0
	myCheckForScriptMenuItem = myResult
End Function
Rem</fragment>
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