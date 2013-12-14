Rem ScriptLabels.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Shows how to set script labels and how to
Rem get references to page items by label.
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
   Set myDocument = myInDesign.Documents.Add
   Set myPage = myDocument.Pages.Item(1)
   myPageWidth = myDocument.DocumentPreferences.PageWidth
   myPageHeight = myDocument.DocumentPreferences.PageHeight
   Rem <fragment>
   Rem Create 10 random page items.
   For i = 1 To 10
       myX1 = myGetRandom(0, myPageWidth, False)
       myY1 = myGetRandom(0, myPageHeight, False)
       myX2 = myGetRandom(0, myPageWidth, False)
       myY2 = myGetRandom(0, myPageHeight, False)
       Set myRectangle = myPage.Rectangles.Add
       myRectangle.GeometricBounds = Array(myY1, myX1, myY2, myX2)
       If myGetRandom(0, 1, True) > 0 Then
           myRectangle.Label = "myScriptLabel"
       End If
   Next
   Count = 0
   For i = 1 To myPage.PageItems.Count
       If myPage.PageItems.Item(i).Label = "myScriptLabel" Then
           Count = Count + 1
       End If
   Next
   MsgBox ("Found " & CStr(Count) & " page items with the label.")
   Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function
Rem This function gets a random number in the range myStart to myEnd.
Function myGetRandom(myStart, myEnd, myInteger)
    Rem Here's how to generate a random number from a given range:
    Rem Int((upperbound - lowerbound + 1) * Rnd + lowerbound)
    If myInteger = True Then
        myGetRandom = Int(((myEnd - myStart + 1) * Rnd) + myStart)
    Else
        myGetRandom = ((myEnd - myStart + 1) * Rnd) + myStart
    End If
End Function