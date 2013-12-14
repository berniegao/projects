Rem AfterNewDoScript.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Run by the AfterNewHandler.vbs script in response to an "afterNew" event
Rem triggered by the event listener installed by the AfterNew.vbs script. 
Rem It sets up a basic document layout and adds XMP information
Rem to the document.
Rem <fragment>
AfterNewHandler
Function AfterNewHandler()
	Set myInDesign = CreateObject("InDesign.Application")
	Set myDocument = myInDesign.Documents.Item(1)
	Set myViewPreferences = myDocument.ViewPreferences
	Rem Because this script will be run by the WScript shell,
	Rem we need to use decimal values, rather than enumerations.
	myViewPreferences.HorizontalMeasurementUnits = 2054188905
	myViewPreferences.VerticalMeasurementUnits = 2054188905
	myViewPreferences.RulerOrigin = 1380143215
	Rem mySlugOffset is the distance from the bottom of the
	Rem page to the top of the slug.
	mySlugOffset = 24
	Rem mySlugHeight is the height of the slug text frame.
	mySlugHeight = 72
	With myDocument.DocumentPreferences
	    .SlugBottomOffset = mySlugOffset + mySlugHeight
	    .SlugTopOffset = 0
	    .SlugInsideOrLeftOffset = 0
	    .SlugRightOrOutsideOffset = 0
	End With
	For myCounter = 1 To myDocument.MasterSpreads.Count
	    Set myMasterSpread = myDocument.MasterSpreads.Item(myCounter)
	    For myMasterPageCounter = 1 To myMasterSpread.Pages.Count
	        Set myPage = myMasterSpread.Pages.Item(myMasterPageCounter)
	        mySlugBounds = myGetSlugBounds(myDocument, myPage, mySlugOffset, mySlugHeight)
	        Set mySlugFrame = myPage.TextFrames.Add
	        mySlugFrame.GeometricBounds = mySlugBounds
	        mySlugFrame.Contents = "Created by: " & myInDesign.UserName
	    Next
	Next
	With myDocument.MetadataPreferences
	    .Author = "Adobe Systems"
	    .Description = "This is a sample document with XMP metadata."
		.DocumentTitle = "After New Handler Example"
	End With
End Function
Function myGetSlugBounds(myDocument, myPage, mySlugOffset, mySlugHeight)
    myPageWidth = myDocument.DocumentPreferences.PageWidth
    myPageHeight = myDocument.DocumentPreferences.PageHeight
    If myPage.Side = 1818653800 Then
	    myX2 = myPage.MarginPreferences.Left
	    myX1 = myPage.MarginPreferences.Right
	Else
	    myX1 = myPage.MarginPreferences.Left
	    myX2 = myPage.MarginPreferences.Right
	End If
	myX2 = myPageWidth - myX2
    myY1 = myPageHeight + mySlugOffset
    myY2 = myY1 + mySlugHeight
    myGetSlugBounds = Array(myY1, myX1, myY2, myX2)
End Function
Rem </fragment>