Rem Ungroup.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to ungroup a group.
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
	ReDim myArray(0)
	Rem Add the items to the array.
	myPush myArray, myPage.Rectangles.Item(1), True
	myPush myArray, myPage.Rectangles.Item(2), True
	myPush myArray, myPage.Ovals.Item(1), True
	myPush myArray, myPage.Ovals.Item(1), True
	Rem Group the items.
	myPage.Groups.Add myArray
	Rem </fragment>
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myPage = myDocument.Pages.Item(1)
	Set myGroup = myPage.Groups.Item(1)
	Rem <fragment>
	Rem Given a group "myGroup"...
	Set myPageItems = myGroup.Ungroup
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