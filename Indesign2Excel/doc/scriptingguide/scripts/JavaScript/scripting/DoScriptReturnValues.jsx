//DoScriptReturnValues.jsx
//An InDesign CS6 JavaScript
//
//Shows how to get values back from a script run using the doScript method.
//<fragment>
//To send parameters to a script run using app.doScript(), the doScript 
//statement must not appear inside a function. If it does, the parameters 
//will not be passed to the script (unless the function takes the same
//parameters as the doScript call).
var myDocument = app.documents.add();
var myPage = myDocument.pages.item(0);
var myTextFrame = myPage.textFrames.add();
myTextFrame.geometricBounds = ["72pt", "72pt", "288pt", "288pt"];
myTextFrame.contents = "Example text frame.";
var myDestinationPage = myDocument.pages.add(LocationOptions.after, myPage);
var myPageIndex = myDestinationPage.name;
var myID = myTextFrame.id;
var myJavaScript = "var myDestinationPage = arguments[1];\r" ;
myJavaScript += "myID = arguments[0];\r"; 
myJavaScript += "var myX = arguments[2];\r";
myJavaScript += "var myY = arguments[3]\r;"
myJavaScript += "var myPageItem = app.documents.item(0).pages.item(0).pageItems.itemByID(myID);\r";
myJavaScript += "myPageItem.duplicate(app.documents.item(0).pages.item(myDestinationPage));\r"
//Create an array for the parameters we want to pass to the JavaScript.
var myArguments = [myID, myPageIndex, 0, 0];
var myDuplicate = app.doScript(myJavaScript, ScriptLanguage.javascript, myArguments);
//myDuplicate now contains a reference to the duplicated text frame.
//Change the text in the duplicated text frame.
myDuplicate.contents = "Duplicated text frame.";
//</fragment>