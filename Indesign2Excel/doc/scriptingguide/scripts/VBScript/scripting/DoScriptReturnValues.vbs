Rem DoScriptReturnValues.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to return values from a script run
Rem using the DoScript method.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application.CS6")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
    Set myDocument = myInDesign.Documents.Add
    Set myPage = myDocument.Pages.Item(1)
    Set myTextFrame = myPage.TextFrames.Add
    myTextFrame.GeometricBounds = Array("72pt", "72pt", "288pt", "288pt")
    myTextFrame.Contents = "Example text frame."
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myTextFrame = myPage.TextFrames.Item(1)
	Set myDestinationPage = myDocument.Pages.Add(idLocationOptions.idAfter, myPage)
	myPageIndex = myDestinationPage.Name
	myID = myTextFrame.Id
	myJavaScript = "var myDestinationPage = arguments[1];" & vbCr
	myJavaScript = myJavaScript & "myID = arguments[0];" & vbCr
	myJavaScript = myJavaScript & "var myX = arguments[2];" & vbCr
	myJavaScript = myJavaScript & "var myY = arguments[3];" & vbCr
	myJavaScript = myJavaScript & "var myPageItem = app.documents.item(0).pages.item(0).pageItems.itemByID(myID);" & vbCr
	myJavaScript = myJavaScript & "myPageItem.duplicate(app.documents.item(0).pages.item(myDestinationPage));" & vbCr
	Rem Create an array for the parameters we want to pass to the JavaScript.
	myArguments = Array(myID, myPageIndex, 0, 0)
	Set myDuplicate = myInDesign.DoScript(myJavaScript, idScriptLanguage.idJavascript, myArguments)
	Rem myDuplicate now contains a reference to the duplicated text frame.
	Rem Change the text in the duplicated text frame.
	myDuplicate.contents = "Duplicated text frame."
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function