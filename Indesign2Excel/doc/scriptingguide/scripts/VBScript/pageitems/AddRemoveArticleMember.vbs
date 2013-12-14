Rem AddRemoveArticleMember.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Show how to add members to an article and
Rem how to remove members from an article.
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
	myOval.geometricBounds = Array(72, 156, 144, 228)
	Set myOval = myPage.Ovals.Add
	myOval.geometricBounds = Array(156, 72, 228, 144)
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array (156, 157, 228, 228)
	
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array (250, 72, 322, 144)
	Set myOval = myPage.Ovals.Add
	myOval.GeometricBounds = Array (250, 156, 322, 228)
	Set myRectangle = myPage.Rectangles.Add
	myRectangle.GeometricBounds = Array (334, 72, 406, 144)
	Set myOval = myPage.Ovals.Add
	myOval.GeometricBounds = Array (334, 157, 406, 228)
	
	Rem Given a page "myPage" containing at least two ovals and two rectangles.
	ReDim myArray(0)
	Rem Add the items to the array.
	myPush myArray, myPage.Rectangles.Item(1), True
	myPush myArray, myPage.Rectangles.Item(2), True
	myPush myArray, myPage.Ovals.Item(1), True
	myPush myArray, myPage.Ovals.Item(2), True
	Rem Group the items.
	myPage.Groups.Add myArray
End Function
Function mySnippet(myInDesign)
	Rem <fragment>
	Set myDocument = myInDesign.Documents.Item(1)
	Set articles = myDocument.Articles
	
	Rem Create new articles.
	Set article1 = articles.Add("Article1", True)
	Set article2 = articles.Add("Article2", True)
	Set article3 = articles.Add("Article3", True)
	
	Set myPage = myDocument.pages.item(1)
	Set article1Members = article1.ArticleMembers
	article1Members.Add myPage.Rectangles.item(1)
	article1Members.Add myPage.Ovals.item(1)
	
	Set article2Members = article2.ArticleMembers
	article2Members.Add myPage.Rectangles.item(2)
	article2Members.Add myPage.Ovals.item(2)
	
	Set article3Members = article3.ArticleMembers
	Rem Add group as article member.
	article3Members.Add myPage.Groups.item(1)
	Rem </fragment>
	
	Rem <fragment>
	Set articleMember = article1Members.item(1)
	articleMember.Delete
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