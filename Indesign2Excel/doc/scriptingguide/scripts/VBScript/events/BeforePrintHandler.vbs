Rem BeforePrintHandler.vbs
Rem An InDesign CS6 VBScript
Rem
Rem Provides a "beforePrint" event handler to the BeforePrint.vbs
Rem tutorial script. Peforms a preflight check on a document.
Rem <fragment>
Rem "evt" is the event passed to this script by the event listener.
myBeforePrintHandler(evt)
Function myBeforePrintHandler(myEvent)
	Rem The parent of the event is the document.
	Set myDocument = myEvent.parent
	If myPreflight(myDocument) = False Then
		myEvent.stopPropagation
		myEvent.preventDefault
		myString = "Document did not pass preflight check." & vbCr
		myString = myString & "Please fix the problems and try again."
		msgbox(myString)
	Else
		msgbox("Document passed preflight check. Ready to print.")
	End If
End Function
Function myPreflight(myDocument)
	myPreflightCheck = True
	myFontCheck = myCheckFonts(myDocument)
	myGraphicsCheck = myCheckGraphics(myDocument)
	If ((myFontCheck = false)Or(myGraphicsCheck = false)) Then
		myPreflightCheck = false
	End If
	myPreflight = myPreflightCheck
End function
Function myCheckFonts(myDocument)
	myFontCheck = true
	For myCounter = 1 To myDocument.fonts.count
		Set myFont = myDocument.fonts.item(myCounter)
		if myFont.status <> idFontStatus.idinstalled Then
			myFontCheck = false
		End If
	Next
	myCheckFonts = myFontCheck
End function
function myCheckGraphics(myDocument)
	myGraphicsCheck = true
	for myCounter = 1 To myDocument.allGraphics.count
		set myGraphic = myDocument.allGraphics.item(myCounter)
		If myGraphic.itemLink.status <> idLinkStatus.idnormal Then
			myGraphicsCheck = false
		End If
	Next
	myCheckGraphics = myGraphicsCheck
End function
Rem </fragment>