Rem BeforeDisplay.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to add a beforeDisplay event listener to a menu item.
Rem To remove this menu, run the RemoveBeforeDisplay.vbs script.
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
	Rem Find the script file WhatIsSelected.vbs in the same folder as this script.
	myFileNameA = myFindFile(myInDesign, "\WhatIsSelected.vbs")
	Rem Find the script file BeforeDisplayHandler.vbs in the same folder as this script.
	myFileNameB = myFindFile(myInDesign, "\BeforeDisplayHandler.vbs")
	Rem If either of the two files are not found, do nothing.
	If myFileNameA <> "" And myFileNameB <> "" Then	
		Set mySampleScriptAction = myInDesign.ScriptMenuActions.Add("Display Message")
		Set myEventListener = mySampleScriptAction.EventListeners.Add("onInvoke", myFileNameA)
		Set mySampleScriptMenu = myInDesign.Menus.Item("$ID/Main").Submenus.Add("Script Menu Action")
		Set mySampleScriptMenuItem = mySampleScriptMenu.MenuItems.Add(mySampleScriptAction)
		mySampleScriptMenu.EventListeners.Add "beforeDisplay", myFileNameB
	End If
	Rem </fragment>
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
