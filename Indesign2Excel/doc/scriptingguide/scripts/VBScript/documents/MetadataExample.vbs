Rem MetadataExample.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Adds metadata to an example document.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
    myInDesign.Documents.Add
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	With myDocument.MetadataPreferences
		.Author = "Adobe Systems"
		.CopyrightInfoURL = "http://www.adobe.com"
		.CopyrightNotice = "This document is copyrighted."
		.CopyrightStatus = idCopyrightStatus.idYes
		.Description = "Example of xmp metadata scripting in Adobe InDesign CS6."
		.DocumentTitle = "XMP Example"
		.JobName = "XMP_Example_2008"
		.Keywords = Array("animal", "mineral", "vegetable")
		Rem The metadata preferences object also includes the read-only
		Rem creator, format, creationDate, modificationDate, and serverURL properties
		Rem that are automatically entered and maintained by InDesign.
		Rem Create a custom XMP container, "email"
		myURL = "http://ns.adobe.com/xap/1.0/"
		.CreateContainerItem myURL, "email"
		.SetProperty myURL, "email/*[1]", "someone@adobe.com"
	End With
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function