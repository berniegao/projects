Rem Publish.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Shows how to generate an earlier version of the VBScript type library.
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
	Rem <fragment>
	Rem Publish the InDesign CS3 type library (version 5.0 DOM)
	myInDesign.PublishTerminology(5.0)
	Rem </fragment>
End Function
Function myTeardown(myInDesign)
End Function