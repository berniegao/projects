Rem HelloWorldUI.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to create a simple dialog box
Rem and use the results in a script.
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
	myDisplayDialog(myInDesign)
End Function
Function myTeardown(myInDesign)
End Function
Function myDisplayDialog(myInDesign)
	Set myDialog = myInDesign.Dialogs.Add
	myDialog.CanCancel = True
	myDialog.Name = "Simple User Interface Example Script"
	Set myDialogColumn = myDialog.DialogColumns.Add
	Set myTextEditField = myDialogColumn.TextEditboxes.Add
	myTextEditField.EditContents = "Hello World!"
	myTextEditField.MinWidth = 180
	Rem Create a number (real) entry field.
	Set myPointSizeField = myDialogColumn.measurementEditboxes.Add
	myPointSizeField.EditValue = 72
	myResult = myDialog.Show
	If myResult = True Then
		Rem Get the values from the dialog box controls.
		myString = myTextEditField.EditContents
		myPointSize = myPointSizeField.EditValue
		Rem Remove the dialog box from memory.
		myDialog.Destroy
		myMakeDocument myInDesign, myString, myPointSize
	Else
		myDialog.Destroy
	End If
End Function
Function myMakeDocument(myInDesign, myString, myPointSize)
	Set myDocument = myInDesign.Documents.Add
	Set myTextFrame = myDocument.Pages.Item(1).TextFrames.Add
	Rem Resize the text frame to the "live" area of the page 
	Rem (using the function "myGetBounds").
	myBounds = myGetBounds(myDocument, myDocument.Pages.Item(1))
	myTextFrame.GeometricBounds = myBounds
	Rem Enter the text from the dialog box in the text frame.
	myTextFrame.Contents = myString
	Rem Set the size of the text to the size you entered in the dialog box.
	myTextFrame.Texts.Item(1).PointSize = myPointSize
End Function
Function myGetBounds(myDocument, myPage)
	myPageHeight = myDocument.DocumentPreferences.PageHeight
	myPageWidth = myDocument.DocumentPreferences.PageWidth
	myTop = myPage.MarginPreferences.Top
	myLeft = myPage.MarginPreferences.Left
	myRight = myPage.MarginPreferences.Right
	myBottom = myPage.MarginPreferences.Bottom
	myRight = myPageWidth - myRight
	myBottom = myPageHeight - myBottom
	myGetBounds = Array(myTop, myLeft, myBottom, myRight)
End Function