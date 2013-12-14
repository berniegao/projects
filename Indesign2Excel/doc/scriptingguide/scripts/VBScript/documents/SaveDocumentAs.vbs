Rem SaveDocumentAs.vbs
Rem An InDesign CS6 VBScript
Rem
Rem If the document has been changed since it was last saved, save it in a file named by the script.
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	Set myPage = myDocument.Pages.Item(1)
	Set myRectangle = myPage.Rectangles.Add
End Function
Function mySnippet(myInDesign)
   Rem <fragment>
   set myDocument = myIndesign.Documents.Item(1)
   if myDocument.Saved = False Then
       Rem If you do not provide a file name, 
       Rem InDesign will display the Save dialog box.
       Rem You'll have to fill in your own file path.
       myDocument.Save "C:\SaveDocumentAs.indd"
   End If
   Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function