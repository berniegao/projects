Rem GetNemuNames.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Gets the names of all menus and writes them to a text file.
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
	Set myFileSystemObject = CreateObject("Scripting.FileSystemObject")
	Set myTextFile = myFileSystemObject.CreateTextFile("c:\menunames.txt", True, False)
	For myMenuCounter = 1 To myInDesign.Menus.Count
		Set myMenu = myInDesign.Menus.Item(myMenuCounter)
		myTextFile.WriteLine myMenu.Name
		myProcessMenu myMenu, myTextFile
	Next
	myTextFile.Close
	MsgBox "done!"
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem <fragment>
Function myProcessMenu(myMenuItem, myTextFile)
	myString = ""
	myMenuName = myMenuItem.Name
	For myCounter = 1 To myMenuItem.MenuElements.Count
		If TypeName(myMenuItem.MenuElements.Item(myCounter)) <> "MenuSeparator" Then
			myString = myGetIndent(myMenuItem.MenuElements.Item(myCounter),myString, False)
			On Error Resume Next  
			myTextFile.WriteLine myString & myMenuItem.MenuElements.Item(myCounter).Name
			myMenuElementName = myMenuItem.MenuElements.Item(myCounter).Name
			myString = ""
			If TypeName(myMenuItem.MenuElements.Item(myCounter)) = "Submenu" Then
				If myMenuItem.MenuElements.Count > 0 Then
					myProcessMenu myMenuItem.MenuElements.Item(myCounter),myTextFile
				End If
			End If
			Err.Clear
		End If
	Next
End Function
Function myGetIndent(myMenuItem, myString, myDone)
	Do While myDone = False
		If TypeName(myMenuItem.Parent) = "Menu" or TypeName(myMenuItem.Parent) = "Application" Then
			myDone = True
		Else
			myString = myString & vbTab
			myGetIndent myMenuItem.Parent, myString, myDone
		End If
	Loop
	myGetIndent = myString
End Function
Rem </fragment>

