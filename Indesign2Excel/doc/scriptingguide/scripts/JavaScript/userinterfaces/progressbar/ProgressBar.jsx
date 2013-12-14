//ProgressBar.jsx
//An InDesign CS6 JavaScript
//
//Provides a script implementation to create a progress bar for the CallProgressBar
// tutorial script.

//<fragment>
#targetengine "session"
//Because these terms are defined in the "session" engine,
//they will be available to any other JavaScript running
//in that instance of the engine.
var myMaximumValue = 300;
var myProgressBarWidth = 300;
var myIncrement = myMaximumValue/myProgressBarWidth;
myCreateProgressPanel(myMaximumValue, myProgressBarWidth);
function myCreateProgressPanel(myMaximumValue, myProgressBarWidth){
	myProgressPanel = new Window('window', 'Progress');
	with(myProgressPanel){
		myProgressPanel.myProgressBar = add('progressbar', [12, 12,
	myProgressBarWidth, 24], 0, myMaximumValue);
	}
}
//</fragment>

