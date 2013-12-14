Rem LabelGraphicBeforeDisplay.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Provides a "beforeDisplay" event handler for the LabelGraphicMenu.vbs
Rem sample script. This event handler checks the type of the selection.
Rem If a graphic is selected, the event handler adds the script menu action 
Rem to the menu. If no graphics are selected, the handler removes the menu item.
Rem<fragment>
myBeforeDisplayHandler evt
function myBeforeDisplayHandler(myEvent)
	ReDim myObjectList(0)
	Set myInDesign = CreateObject("InDesign.Application")
	Set myLayoutContextMenu = myInDesign.Menus.Item("$ID/RtMouseLayout")
	Rem Check for open documents is a basic sanity check--
	Rem it should never be needed, as this menu won't be
	Rem displayed unless an item is selected. But it's best
	Rem to err on the side of safety.
	If myInDesign.Documents.Count > 0 Then
		If myInDesign.Selection.Count > 0 Then
			Rem Scan the selection for qualifying graphics.
			For myCounter = 1 To myInDesign.Selection.Count
				Select Case TypeName(myInDesign.Selection.Item(myCounter))
					Case "PDF","EPS", "Image":
						Rem Do not add the graphic to the array if the graphic is
						Rem an inline or anchored graphic.
						Select Case TypeName(myInDesign.Selection.Item(myCounter).Parent.Parent)
							Case "Page", "Spread", "Group", "Rectangle", "Oval", "Polygon":
								If Not (IsEmpty(myObjectList(0))) Then
			                    	ReDim Preserve myObjectList(UBound(myObjectList) + 1)
			                    End If
			                    Set myObjectList(UBound(myObjectList)) = myInDesign.Selection.Item(myCounter)
			             End Select
					Case "Rectangle", "Oval", "Polygon":
						Rem Do not add the graphic to the array if the graphic is
						Rem an inline or anchored graphic.
						Select Case TypeName(myInDesign.Selection.Item(myCounter).Parent)
							Case "Page", "Spread", "Group", "Rectangle", "Oval", "Polygon":
								If myInDesign.selection.Item(myCounter).Graphics.Count > 0 Then
									If Not (IsEmpty(myObjectList(0))) Then
			                        	ReDim Preserve myObjectList(UBound(myObjectList) + 1)
				                    End If
				                    Set myObjectList(UBound(myObjectList)) = myInDesign.Selection.Item(myCounter).Graphics.Item(1)
								End If
						End Select
				End Select
			Next
			If Not (IsEmpty(myObjectList(0))) Then
				Rem Add the menu item if it does not already exist.
				If myCheckForMenuItem(myLayoutContextMenu, "Label Graphic") = False Then
					myMakeLabelGraphicMenuItem myInDesign
				End If
			Else
				Rem Remove the menu item, if it exists.
				If myCheckForMenuItem(myLayoutContextMenu, "Label Graphic") = True Then
					myLayoutContextMenu.MenuItems.Item("Label Graphic").delete
				End If
			End If
		End If
	End If
End Function
Function myMakeLabelGraphicMenuItem(myInDesign)
	myEventHandler = myFindFile(myInDesign, "\LabelGraphicOnInvoke.vbs")
	If myEventHandler <> "" Then
		If myCheckForScriptMenuItem(myInDesign, "Label Graphic") = False Then
			Set myLabelGraphicMenuAction = myInDesign.ScriptMenuActions.add("Label Graphic")
			Set myLabelGraphicEventListener = myLabelGraphicMenuAction.EventListeners.Add("onInvoke", myEventHandler, false)
		End If
		Set myLabelGraphicMenuItem = myInDesign.Menus.Item("$ID/RtMouseLayout").menuItems.add(myInDesign.scriptMenuActions.item("Label Graphic"))
	Else
		MsgBox "Could not locate event handler VBScript file. Please reinstall the InDesign example script."
	End If	
End Function
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
function myCheckForScriptMenuItem(myInDesign, myString)
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
Rem</fragment>