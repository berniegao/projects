Rem Targeting.vbs
Rem An InDesign CS6 VBScript
Rem 
Rem Target the script to a particular version of InDesign

Rem <fragment>
Rem Target InDesign CS6:
Set myApp = CreateObject("InDesign.Application.CS6")
Rem Target the last version of InDesign
Set myApp = CreateObject("InDesign.Application")
Rem </fragment>
