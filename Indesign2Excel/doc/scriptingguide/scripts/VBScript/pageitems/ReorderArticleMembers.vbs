Rem ReorderArticleMembers.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Show how to reorder members in an article
main
Function main()
	Set myInDesign = CreateObject("InDesign.Application")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
	Set myDocument = myInDesign.Documents.Add
	myDocument.viewPreferences.horizontalMeasurementUnits = idMeasurementUnits.idPoints
	myDocument.viewPreferences.verticalMeasurementUnits = idMeasurementUnits.idPoints
	Set myPage = myDocument.pages.item(1)
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array (72, 72, 144, 144)
	Set myOval = myPage.Ovals.Add
	myOval.geometricBounds = Array(156, 72, 228, 144)
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array (250, 72, 322, 144)
	Set myOval = myPage.Ovals.Add
	myOval.GeometricBounds = Array (332, 72, 406, 144)
	
	Set myTextFrame = myPage.TextFrames.Add
	myTextFrame.GeometricBounds = Array (418, 72, 490, 144)	
	myTextFrame.Contents = "This is some example text."
		
	Rem Given a page "myPage" containing at least two ovals and two rectangles.
	ReDim myArray(0)
	Rem Add the items to the array.
	myPush myArray, myPage.Rectangles.Item(1), True
	myPush myArray, myPage.Ovals.Item(1), True
	Rem Group the items.
	myPage.Groups.Add myArray	
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.pages.item(1)
	Set articles = myDocument.Articles
	set article = articles.Add("Article1", True)	
	
	Rem <fragment>
	Set articleMembers = article.ArticleMembers
	articleMembers.Add myPage.Rectangles.item(1)
	articleMembers.Add myPage.Ovals.item(1)
	articleMembers.Add myPage.TextFrames.item(1)
	articleMembers.Add myPage.Groups.item(1)
	
	articleMembers.item(1).Move idLocationOptions.idAtEnd
	articleMembers.item(3).Move idLocationOptions.idAtBeginning
	articleMembers.item(2).Move idLocationOptions.idAfter, articleMembers.item(3)
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem Generic function for adding a value to an array.
Function myPush(myArray, myValue, myValueIsObject)
    If Not (IsEmpty(myArray(0))) Then
        ReDim Preserve myArray(UBound(myArray) + 1)
    End If
    If myValueIsObject = True Then
        Set myArray(UBound(myArray)) = myValue
    Else
        myArray(UBound(myArray)) = myValue
    End If
End Function